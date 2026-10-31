# Examples
<!-- id: lot-of-points-python-ejemplos -->
<!-- origen: e07b0c06a2180047be7dffac16c0f9b008d9743d -->

These scripts use the application programming interface (API) in the [lop module reference](referencia.md). To run one, copy it into the **Python** panel editor and click **Run**.

## View and cloud data

Writes the drawing area size, open-cloud bounding box, navigation reference point and editable clouds to **Output**.

```python
import lop

v = lop.viewer
tamano = v.SizeInPixels
print("Área de dibujo:", tamano.Item1, "x", tamano.Item2, "píxeles")

caja = v.Domain
print("Mínimo:", caja.Min.X, caja.Min.Y, caja.Min.Z)
print("Máximo:", caja.Max.X, caja.Max.Y, caja.Max.Z)

origen = v.NavigationReferencePoint
print("Punto de referencia para la navegación:", "no disponible" if origen is None else origen)

nubes = v.EditableClouds
print(nubes.Count, "nubes editables:")
for ruta in nubes:
    print("  ", ruta)
```

## Change visualization

Colors points by elevation with the Viridis ramp, applies size factor 2, enables Eye-Dome Lighting (EDL) depth shading and sets a dark gray background.

```python
import lop
from Lop.Core.Models import ColorAttribute, ColorRamp
from Lop.Core.Services import ColorRgba

v = lop.viewer
v.ColorAttribute = int(ColorAttribute.Elevation)
v.ColorRamp = int(ColorRamp.Viridis)
v.PointSizeScale = 2
v.EdlEnabled = True
v.SetBackgroundColor(ColorRgba.FromHex("#202020"))
```

## Top view of all clouds

Launches **Top** and **Zoom extension**, like their **Visualization** buttons.

```python
import lop

lop.run_command("lop.view.top")
lop.run_command("lop.view.zoom-extents")
```

## The point at the screen center

Finds the cloud point visible at the drawing area's center, writes its coordinates and marks it in the view.

```python
import lop

v = lop.viewer
tamano = v.SizeInPixels
centro_x = tamano.Item1 / 2
centro_y = tamano.Item2 / 2

punto = v.LocatePoint(centro_x, centro_y, 10)
if punto is None:
    print("No hay ningún punto en el centro de la pantalla.")
else:
    print(f"X {punto.X:.3f}  Y {punto.Y:.3f}  Z {punto.Z:.3f}")
    v.SelectedPoint = punto
```

## Delete points in a sphere

Selects points within 2 cloud units of the point at the screen center and records deletion in cloud edit logs. Use title bar **Undo** to undo deletion.

```python
import lop
from Lop.Core.Services import EditAction

v = lop.viewer
tamano = v.SizeInPixels
centro = v.LocatePoint(tamano.Item1 / 2, tamano.Item2 / 2, 10)
if centro is None:
    print("No hay ningún punto en el centro de la pantalla.")
else:
    v.SelectBySphere(centro, 2.0)
    nubes = v.ConfirmEdit("Sphere", EditAction.Delete, 0)
    print("Borrado anotado en", nubes, "nubes")
```

To classify points instead, use `EditAction.AssignClass` and the class as the third argument: `v.ConfirmEdit("Sphere", EditAction.AssignClass, 6)`.

## Edit history

Writes open-cloud edit log events with their dates.

```python
import lop
from datetime import datetime

for evento in lop.viewer.EditingHistory:
    fecha = datetime.fromtimestamp(evento.EventId / 1000)
    print(f"{fecha:%d/%m/%Y %H:%M:%S}  {evento.EventCode}  ({evento.Clouds} nubes)")
```

## Run a tile-based algorithm

Launches **Classify by height**, from **Basic algorithms** on **Point classification**. The command identifier is `lop.algorithm.` followed by the algorithm identifier. The algorithm uses parameter values from **Settings** and continues running when the script ends.

```python
import lop

lop.run_command("lop.algorithm.lop.example.height_classifier")
```

## Hide spherical image spheres

Writes each spherical image's name and coordinates and stops drawing its sphere.

```python
import lop

for foto in lop.viewer.SphericalPhotos:
    c = foto.Coordinates
    print(f"{foto.Name}: {c.X:.3f} {c.Y:.3f} {c.Z:.3f}")
    foto.ShowSphere = False
```

## Terrain profile with numpy

Traverses the cloud box from minimum to maximum X through its center at 50 positions, finding the lowest loaded point in a vertical cylinder of radius 0.5 cloud units at each position, like **Draw height**. Writes the number of positions with a point and minimum and maximum elevations.

```python
import lop
import numpy as np
from Geometries import Point3D

v = lop.viewer
caja = v.Domain
y = (caja.Min.Y + caja.Max.Y) / 2
abajo = caja.Min.Z - 1
arriba = caja.Max.Z + 1

xs = np.linspace(caja.Min.X, caja.Max.X, 50)
cotas = []
for x in xs:
    suelo = v.FirstPointInCylinder(Point3D(float(x), y, abajo), Point3D(float(x), y, arriba), 0.5)
    cotas.append(np.nan if suelo is None else suelo.Z)

cotas = np.array(cotas)
encontrados = np.count_nonzero(~np.isnan(cotas))
print("Posiciones con punto:", encontrados, "de", len(cotas))
if encontrados > 0:
    print("Cota mínima:", np.nanmin(cotas), " cota máxima:", np.nanmax(cotas))
```

`FirstPointInCylinder` searches points currently loaded in the viewer, and loaded nodes depend on camera position: the same script can give different elevations with another view.

## Command filtering points and clouds

Save this as `select_building.py` in `%AppData%\lop\commands` and restart Lot Of Points. It accepts class 6 points from editable clouds, queries that cloud's sphere and selects its class 6 points. The filter can accept candidates from a hidden cloud near the clicked point.

```python
import lop
import numpy as np

@lop.command("example.select_building", "Seleccionar clase 6",
             existing_tab_id="lop.tab.edit", ribbon_section="Mis comandos",
             requirements=lop.REQUIRES_VISIBLE_CLOUD | lop.REQUIRES_EDITABLE_CLOUD)
def select_building(host):
    point = host.ask_point(
        "Pulsa un punto de clase 6; Esc para cancelar",
        accept_point=lambda p, cloud: p.classification == 6
            and cloud.editable and cloud.has_original_point_indices)
    if point is None:
        return
    points = host.points_in_sphere(point, 2.0, cloud_ids=[point.cloud_id])
    if points is None:
        return
    if not points.complete:
        host.log("La consulta no ha cargado todos los puntos.")
        return
    host.select_points(points, np.flatnonzero(points.classification == 6))
```

When finished, apply **Delete**, **Classify** or **Isolate** from **Actions**. Search radius is 2 cloud units.

## Command processing clouds by tiles

Save this as `classify_tiles.py` in the commands folder and restart Lot Of Points. It chooses editable clouds with original indices, including hidden ones, and assigns class 1 to their points through `process_tiles`.

```python
import lop

@lop.command("example.python.classify_tiles", "Asignar clase 1",
             existing_tab_id="lop.tab.classification",
             ribbon_section="Mis comandos", requirements=lop.REQUIRES_EDITABLE_CLOUD)
def classify_tiles(host):
    clouds = host.clouds()
    if clouds is None:
        return
    ids = [c.cloud_id for c in clouds
           if c.editable and c.has_original_point_indices]
    if not ids:
        return
    options = lop.TileOptions(tile_core_side_length_cloud_units=100.0,
                              estimated_peak_bytes_per_point=1.0)

    def process_tile(tile, result, tile_host):
        if tile_host.cancelled():
            return
        result.classification[:] = 1
        tile_host.report_tile_progress(1.0)

    summary = host.process_tiles(ids, options, process_tile)
    if summary is not None:
        host.log(f"{summary.reclassified_point_count} puntos reclasificados")
```

To query points without editing them, use `read_only=True` and treat `result` as `None`. To load a command-generated GeoPackage, call `host.load_geopackage(r"C:\datos\resultado.gpkg")` before the command function ends.
