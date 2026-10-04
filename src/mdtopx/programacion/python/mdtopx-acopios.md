# Cubicación de acopios
<!-- id: mdtopx-acopios -->

Funciones del paquete [`mdtopx`](mdtopx.md) para clasificar la nube de puntos del interior de una nave
(por ejemplo, un escaneo SLAM) y **cubicar los acopios** de material que hay en ella. Es el mismo
proceso que hace MDTopX al cubicar acopios con zonas.

El proceso tiene tres pasos:

1. **`prepare_walls`** (opcional): prepara la nube de las paredes de la nave.
2. **`classify_ground_roof`**: separa el suelo, el techo y el ruido, y obtiene la malla del suelo.
3. **`classify_stockpiles_by_zone`**: cubica el acopio de cada zona respecto al suelo.

Todas las medidas están en metros.

## `prepare_walls`

```python
prepare_walls(walls, params, progress=None) -> WallsResult
```

Convierte una nube que contiene solo las paredes de la nave (`walls`, una `PointCloud`) en los dos datos
que usan los pasos siguientes. `WallsParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `grid_step` | 0.5 | Tamaño de celda con el que se aligera la nube de paredes. |
| `offset` | 0.5 | Media anchura de la banda que se crea alrededor de las paredes. |
| `decimals` | 3 | Precisión de las coordenadas. |
| `walls_quantum` | 0.01 | Redondeo que se aplica a la nube de paredes antes de usarla, igual que hace MDTopX (0 = sin redondeo). |

`WallsResult`: `status`, `low_wall_points` (puntos del pie de las paredes, para `classify_ground_roof`) y
`wall_outlines` (contornos de la banda de las paredes, para `classify_stockpiles_by_zone`).

## `classify_ground_roof`

```python
classify_ground_roof(cloud, params, low_wall_points=[], progress=None) -> GroundRoofResult
```

Clasifica los puntos de `cloud` en suelo (clase 2), techo (6), ruido (7) y sin clasificar (1).
**Modifica** la clasificación de los puntos de la nube. `GroundRoofParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `grid_step` | 0.5 | Tamaño de celda base del proceso. |
| `decimals` | 3 | Precisión de las coordenadas. |
| `projection_mode` | `RasterMDTopX` | Cómo se proyectan los puntos sobre las mallas intermedias (`ProjectionMode`): `RasterMDTopX`, igual que MDTopX (sobre una rejilla del tamaño de celda), o `Triangles`, exacto sobre los triángulos. |

`GroundRoofResult`: `status`, `ground_mesh` (la malla del suelo, un `Mesh`), `ground_count` y
`roof_count`.

## `classify_stockpiles_by_zone`

```python
classify_stockpiles_by_zone(cloud, zone_outlines, zone_labels, ground_mesh, params,
                            wall_outlines=[], progress=None) -> StockpileByZoneResult
```

Cubica el acopio de cada zona de la nave. La nube tiene que haber pasado antes por
`classify_ground_roof`, y `ground_mesh` es la malla del suelo que devolvió.

| Argumento | Contenido |
|---|---|
| `zone_outlines` | Contornos cerrados de las zonas: lista de `Contour(points, code)`. |
| `zone_labels` | Nombres de las zonas: lista de `ZoneLabel(position, name)`. Cada nombre se asigna al primer contorno que contiene su posición. Las zonas sin nombre no se cubican. |
| `wall_outlines` | Contornos de las paredes que devuelve `prepare_walls`. |

`StockpileByZoneParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `grid_step` | 0.5 | Tamaño de celda base del proceso. |
| `classify_cloud` | False | Clasifica además los puntos de cada zona en acopio, pared, punto alto, ruido y suelo, y rehace la superficie del acopio con los puntos de acopio. **Cambia** los volúmenes. |
| `decimals` | 3 | Precisión de las coordenadas. |

`StockpileByZoneResult`: `status` y `zones`, una `ZoneResult` por cada zona con nombre:

| Propiedad | Contenido |
|---|---|
| `name` | Nombre de la zona. |
| `valid` | Si se ha podido cubicar. Si es False (zona sin suelo, sin puntos…), las cifras valen 0. |
| `volume` | Volumen del acopio sobre el suelo, en m³. |
| `area` | Superficie en planta, en m². |
| `height_mean`, `height_max` | Altura media y máxima del acopio. |
| `volume_count` | Número de prismas calculados. |
| `centroid` | Centro de masas del acopio (un `Point3`), por ejemplo para rotular el volumen. |

## Ejemplo

Nube de la nave en LAZ, contornos y nombres de las zonas en un DXF:

```python
import mdtopx
from mdtopx.io.pointcloud import las
from mdtopx.io.vector import dxf

nube = las.read(r"C:\nave\nave.laz").clouds[0].cloud

dibujo = dxf.read(r"C:\nave\zonas.dxf")
contornos = [mdtopx.Contour(l.vertices, l.layer_code) for l in dibujo.polylines if l.closed]
nombres = [mdtopx.ZoneLabel(t.pos, t.text) for t in dibujo.texts]

suelo = mdtopx.classify_ground_roof(nube, mdtopx.GroundRoofParams())
if suelo.status == mdtopx.Status.Ok:
    resultado = mdtopx.classify_stockpiles_by_zone(nube, contornos, nombres, suelo.ground_mesh,
                                                   mdtopx.StockpileByZoneParams())
    for zona in resultado.zones:
        if zona.valid:
            print(f"{zona.name}: {zona.volume:.1f} m³, {zona.area:.1f} m²")
```

`classify_ground_roof` y, con `classify_cloud`, `classify_stockpiles_by_zone` modifican la
clasificación de los puntos de `nube`. Para guardar la nube clasificada, métela en una escena:

```python
entidad = mdtopx.CloudEntity()
entidad.cloud = nube
entidad.is_lidar = True

salida = mdtopx.Scene()
salida.clouds = [entidad]
las.write(r"C:\nave\nave_clasificada.laz", salida)
```
