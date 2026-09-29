# Paquete `mdtopx`

El paquete raíz contiene el **motor de cálculo** de MDTopX: los tipos geométricos, la **escena** que
intercambian todos los formatos y los algoritmos (triangulación, rejillas, análisis de nubes de
puntos…).

```python
import mdtopx
```

## Tipos geométricos

| Tipo | Contenido |
|---|---|
| `Point3` | Punto 3D: `x`, `y`, `z` (coordenadas terreno, `double`). |
| `Triangle` | Triángulo: índices `a`, `b`, `c` en la lista de vértices de su malla (base 0) y `constraint1`, `constraint2`, `constraint3`: línea de ruptura de los lados a-b, b-c y c-a (`-1` = ninguna). |
| `Mesh` | Malla triangulada: `vertices` (lista de `Point3`) y `triangles` (lista de `Triangle`). |
| `LidarPoint` | Punto de una nube: `x`, `y`, `z`, `intensity`, `r`, `g`, `b`, `gps_time`, `angle`, `classification`, `return_number`, `number_of_returns`, `scan_direction`, `edge_of_flight_line`, `source`. |
| `PointCloud` | Nube de puntos: `points` (lista de `LidarPoint`), `add(punto)`, `size()`. |
| `Grid` | Rejilla regular de cotas (MDE): `rows`, `cols`, `origin_x`, `origin_y` (esquina inferior izquierda), `step_x`, `step_y`, `no_data`; `at(fila, col)` y `set(fila, col, z)`. La fila 0 es la del sur. |

Donde se espera un `Point3` también se puede pasar una tupla `(x, y, z)` o `(x, y)` (con `z = 0`).

> Las listas (`vertices`, `triangles`, `points`, y también las de la escena: `polylines`, `meshes`…)
> se **copian** cada vez que se accede a ellas desde Python. Esto tiene dos consecuencias:
>
> - En bucles, guárdalas antes en una variable: `vertices = malla.vertices` y luego
>   `for v in vertices: ...`.
> - Para modificarlas **no uses** `append` ni asignes elementos sueltos (`escena.polylines.append(l)`
>   cambia una copia y la escena no se entera). Construye la lista y **asígnala**:
>   `escena.polylines = [linea1, linea2]`, o `escena.polylines = escena.polylines + [linea]`.

## La escena

Una `Scene` es el contenedor que leen y escriben todos los formatos de [`mdtopx.io`](mdtopx-io.md).
Cada formato usa las listas que le corresponden:

| Propiedad | Contenido | Tipo de cada elemento |
|---|---|---|
| `points` | Puntos sueltos | `PointEntity` (`p`, `layer`, `id`, `attributes`) |
| `polylines` | Líneas y polígonos | `Polyline` (`vertices`, `closed`, `layer_code`, `digi_attributes`, `perimeter`, `area`…) |
| `texts` | Textos | `TextEntity` (`pos`, `text`, `height`, `rotation`, `justification`, `layer_code`…) |
| `clouds` | Nubes de puntos | `CloudEntity` (`cloud`, `is_lidar`, `layer`, `id`) |
| `meshes` | Mallas trianguladas | `MeshEntity` (`mesh`, `id`, `layer_code`, `layer`) |
| `grids` | Rejillas de cotas | `GridEntity` (`grid`) |
| `images` | Imágenes en color | `ImageEntity` (`width`, `height`, `channels`, `data`, georreferencia…) |
| `layers` | Capas o códigos | `Layer` (`name`, `code`) |
| `srs` | Sistema de referencia en WKT, si el formato lo guarda | `str` |

`is_empty()` indica si la escena no tiene ningún contenido.

```python
import mdtopx
from mdtopx.io.vector import dxf

linea = mdtopx.Polyline()
linea.vertices = [(0, 0, 10), (10, 0, 12), (10, 10, 11)]
linea.layer_code = "EJE"

escena = mdtopx.Scene()
escena.polylines = [linea]   # asignar la lista: append no modificaría la escena

dxf.write(r"C:\datos\eje.dxf", escena)
```

## Estado y progreso

Las funciones del motor devuelven un `Status` (`Ok`, `NoPoints`, `InvalidData`,
`TriangulationError`, `Cancelled`), solo o dentro de un objeto resultado.

Las que pueden tardar aceptan el argumento `progress`: una función que recibe la fracción completada
(de `0.0` a `1.0`) y devuelve `True` para continuar o `False` para cancelar.

```python
def progreso(fraccion):
    print(f"\r{fraccion:.0%}", end="")
    return True
```

## Triangulación

| Función | Qué hace |
|---|---|
| `triangulate(points, options, constraints, progress)` | Triangulación de Delaunay 2D de una lista de `Point3`. `constraints` es una lista de `ConstraintEdge` (`a`, `b`, `code`) que fuerza lados (líneas de ruptura). Devuelve un `Result` (`status`, `mesh`). |
| `tetrahedralize(points, options, progress)` | Tetraedrización de Delaunay 3D. Devuelve un `Result3` cuya malla tiene `tetrahedra` (índices `a`, `b`, `c`, `d`). |
| `surface_3d(points, max_distance, options, progress)` | Superficie envolvente de una nube 3D. |
| `cut_fill_tin(vertices, triangles, precision)` | Volúmenes de desmonte y terraplén de una malla cuyos vértices llevan en `z` la diferencia de cota. Devuelve un `CutFillResult` (`fill`, `cut`, `fill_area`, `cut_area`…). |

`Options` configura la triangulación 2D: `decimals` (precisión, 3 = milímetro), `max_edge_length`
(descarta triángulos con algún lado mayor; `0` = sin límite) e `intersection_z` (cota en los cruces
de líneas de ruptura: 0 independiente, 1 media, 2 alta, 3 baja).

```python
import mdtopx

puntos = [mdtopx.Point3(0, 0, 10), mdtopx.Point3(10, 0, 11),
          mdtopx.Point3(0, 10, 12), mdtopx.Point3(10, 10, 13), mdtopx.Point3(5, 5, 15)]

opciones = mdtopx.Options()
opciones.max_edge_length = 50

resultado = mdtopx.triangulate(puntos, opciones)
if resultado.status == mdtopx.Status.Ok:
    print(len(resultado.mesh.triangles), "triángulos")
```

## Rejillas de cotas (MDE)

Análisis de una `Grid` que generan una imagen en un `RasterImage(ancho, alto)` (sus bytes RGB en
`rgb`) o vectores:

| Función | Qué hace |
|---|---|
| `hillshade(grid, params, raster, …)` | Sombreado (`HillshadeParams`). |
| `slopes(grid, params, raster, …)` | Mapa de pendientes (`RampParams`). |
| `aspects(grid, params, raster, …)` | Mapa de orientaciones (`RampParams`). |
| `hypsometric(grid, params, raster, …)` | Tintas hipsométricas por cota (`RampParams` con una `ColorRamp`). |
| `slope_vectors(grid, params, sink, …)` | Vectores de máxima pendiente en un `VectorCollector`. Devuelve un `SlopeVectorResult`. |

## Nubes de puntos

| Función | Qué hace |
|---|---|
| `thin_by_grid(cloud, params, progress)` | Filtra una `PointCloud` por una rejilla regular, dejando un punto por celda según el criterio (`GridThinningParams`, `GridCriterion`). |
| `fit_inclined_plane(points)` | Ajuste por mínimos cuadrados de un plano. Devuelve un `FittedPlane`. |
| `fit_robust_plane(points, tolerance, …)` | Ajuste de plano robusto, con eliminación de puntos atípicos. Devuelve un `RobustPlane`. |
| `divide_cloud(host, input_path, params, tile_name, progress)` | Trocea un archivo de nube **sin cargarlo entero** (LAS, LAZ o E57). Ver [`mdtopx.io.divide`](mdtopx-io.md#trocear-nubes-de-puntos). |
| `filter_cloud(host, input_path, params, tile_name, progress)` | Filtra un archivo de nube por rejilla sin cargarlo entero (LAS, LAZ o E57; `FilterParams`). |

### Cubicación de acopios

| Función | Qué hace |
|---|---|
| `prepare_walls(walls, params, progress)` | Prepara la nube de muros del modelo teórico (`WallsParams`). |
| `classify_ground_roof(cloud, params, low_wall_points, progress)` | Clasifica la nube en suelo, techo, ruido y sin clasificar, y devuelve la malla del suelo (`GroundRoofResult`). **Modifica** la clasificación de los puntos. |
| `classify_stockpiles_by_zone(cloud, zone_outlines, zone_labels, ground_mesh, params, …)` | Clasifica y cubica los acopios de un almacén con zonas predefinidas. Devuelve un `StockpileByZoneResult` con el volumen, el área y las alturas de cada zona. |
