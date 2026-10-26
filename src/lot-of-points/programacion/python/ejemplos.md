# Ejemplos
<!-- id: lot-of-points-python-ejemplos -->

Estos guiones usan la interfaz de programación de aplicaciones (API) de la [Referencia del módulo lop](referencia.md). Para ejecutar uno, cópialo en el editor
del panel **Python** y pulsa **Ejecutar**.

## Datos de la vista y de las nubes

Escribe en **Salida** el tamaño del área de dibujo, la caja de las nubes abiertas, el punto de referencia
para la navegación y las nubes editables.

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

## Cambiar la visualización

Colorea los puntos por cota con la escala Viridis, aplica el factor de tamaño 2, activa el sombreado por
profundidad (EDL, del inglés *Eye-Dome Lighting*) y fija un fondo gris oscuro.

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

## Vista superior de todas las nubes

Lanza las órdenes **Arriba** y **Zoom extensión**, igual que sus botones de la pestaña **Visualización**.

```python
import lop

lop.run_command("lop.view.top")
lop.run_command("lop.view.zoom-extents")
```

## El punto del centro de la pantalla

Busca el punto de la nube que se ve en el centro del área de dibujo, escribe sus coordenadas y lo marca en la vista.

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

## Borrar los puntos de una esfera

Selecciona los puntos dentro de un radio de 2 unidades de la nube del punto del centro de la pantalla y anota su borrado en el registro de
ediciones de las nubes. El borrado se deshace con **Deshacer** de la barra de título.

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

Para clasificar los puntos en vez de borrarlos, usa `EditAction.AssignClass` y la clase en el tercer argumento:
`v.ConfirmEdit("Sphere", EditAction.AssignClass, 6)`.

## Historial de ediciones

Escribe los eventos de los registros de ediciones de las nubes abiertas, con su fecha.

```python
import lop
from datetime import datetime

for evento in lop.viewer.EditingHistory:
    fecha = datetime.fromtimestamp(evento.EventId / 1000)
    print(f"{fecha:%d/%m/%Y %H:%M:%S}  {evento.EventCode}  ({evento.Clouds} nubes)")
```

## Ejecutar un algoritmo por teselas

Lanza **Clasificar por altura**, de **Algoritmos básicos** en **Clasificación de puntos**.
El identificador de la orden es
`lop.algorithm.` seguido del identificador del algoritmo. El algoritmo usa los valores de sus parámetros de la
ventana **Configuración** y sigue ejecutándose cuando el guion termina.

```python
import lop

lop.run_command("lop.algorithm.lop.example.height_classifier")
```

## Ocultar las esferas de las imágenes esféricas

Escribe el nombre y las coordenadas de cada imagen esférica y deja de dibujar su esfera.

```python
import lop

for foto in lop.viewer.SphericalPhotos:
    c = foto.Coordinates
    print(f"{foto.Name}: {c.X:.3f} {c.Y:.3f} {c.Z:.3f}")
    foto.ShowSphere = False
```

## Perfil del terreno con numpy

Recorre la caja de las nubes de oeste a este por su centro, en 50 posiciones, y busca en cada una el punto cargado más
bajo en un cilindro vertical de 0,5 unidades de la nube de radio, como la herramienta **Dibujar altura**. Escribe cuántas posiciones
tienen punto y las cotas mínima y máxima.

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

`FirstPointInCylinder` busca entre los puntos que el visor tiene cargados en ese momento, y los nodos cargados
dependen de la posición de la cámara: el mismo guion puede dar cotas distintas con otra vista.

## Comando que filtra puntos y nubes

Guarda este código como `select_building.py` en `%AppData%\lop\commands` y reinicia Lot Of Points.
El comando acepta puntos de clase 6 de nubes editables, consulta la esfera de esa nube y selecciona sus puntos
de clase 6. El filtro puede aceptar candidatos de una nube oculta cercana al punto pulsado.

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

Al terminar el comando, aplica **Borrar**, **Clasificar** o **Aislar** desde **Acciones**.
El radio de búsqueda es de 2 unidades de la nube.

## Comando que procesa nubes por teselas

Guarda este código como `classify_tiles.py` en la carpeta de comandos y reinicia Lot Of Points.
El comando elige las nubes editables con índices originales, incluidas las ocultas, y asigna la clase 1
a sus puntos mediante `process_tiles`.

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

Para consultar puntos sin editarlos, usa `read_only=True` y trata `result` como `None`.
Para cargar un GeoPackage generado por un comando, llama a `host.load_geopackage(r"C:\datos\resultado.gpkg")`
antes de terminar la función del comando.
