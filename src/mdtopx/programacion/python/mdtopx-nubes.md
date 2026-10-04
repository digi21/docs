# Nubes de puntos
<!-- id: mdtopx-nubes -->

Funciones del paquete [`mdtopx`](mdtopx.md) para nubes de puntos: filtrado por rejilla, ajuste de
planos y troceado o filtrado de archivos sin cargarlos en memoria.

## `LidarPoint` y `PointCloud`

Un `LidarPoint` es un punto con sus atributos LiDAR. Se crea con `LidarPoint(x, y, z)`:

| Propiedad | Contenido |
|---|---|
| `x`, `y`, `z` | Coordenadas terreno. |
| `intensity` | Intensidad (0 a 65535). |
| `r`, `g`, `b` | Color (0 a 255). |
| `gps_time` | Tiempo GPS. |
| `angle` | Ángulo de escaneo, en grados. |
| `classification` | Clase LAS. |
| `return_number`, `number_of_returns` | Número de retorno y número de retornos del pulso. |
| `scan_direction`, `edge_of_flight_line` | Indicadores de dirección de escaneo y de borde de pasada (0 o 1). |
| `source` | Identificador de la pasada (*point source ID*). |

Una `PointCloud` contiene la lista `points`; `add(punto)` añade un punto y `len(nube)` (o `size()`)
devuelve cuántos tiene. A diferencia de las listas, `add` **sí** modifica la nube.

## `thin_by_grid`

```python
thin_by_grid(cloud, params, progress=None) -> ThinningResult
```

Filtra una nube con una rejilla regular: deja **un punto por celda**, elegido o calculado según un
criterio. `GridThinningParams`:

| Propiedad | Por defecto | Significado |
|---|---|---|
| `step` | 1 | Tamaño de la celda, en metros. |
| `origin_x`, `origin_y` | 0 | Desplazamiento del origen de la rejilla respecto a la esquina mínima de la nube. |
| `criterion` | `LowestZ` | Criterio (`GridCriterion`, ver abajo). |
| `snap_to_cell` | False | Coloca el punto resultante en el nodo de su celda. |
| `voxel_3d` | False | Usa celdas 3D (cubos del mismo tamaño); fuerza el criterio `Mean`. |
| `neighbor_distance_precision` | 0 | Escala de la densidad en los criterios por densidad (0 = sin escala). |
| `exclude_classes` | `[]` | Clases LAS que se ignoran. |

Criterios (`GridCriterion`):

| Valor | Punto de cada celda |
|---|---|
| `Random` | El primero que cae en la celda. |
| `Mean` | La media de los puntos de la celda. |
| `WeightedMean` | La media ponderada por la inversa de la distancia al nodo. |
| `AngleWeightedMean` | La media ponderada por el ángulo de escaneo (más peso a los tomados en vertical). |
| `LowestZ`, `HighestZ` | El de menor o mayor cota. |
| `LowestIntensity`, `HighestIntensity` | El de menor o mayor intensidad. |
| `LowestGps`, `HighestGps` | El de menor o mayor tiempo GPS. |
| `LowestDensity`, `HighestDensity` | El de menor o mayor densidad de vecinos. |
| `Report` | No filtra: calcula la estadística de los residuos en cota respecto a la media de cada celda. |

`ThinningResult`: `status` y `cloud` (la nube filtrada). Con el criterio `Report`, `cloud` queda vacía
y los resultados están en `std_dev`, `res_max`, `res_min` y `report_count`.

```python
import mdtopx
from mdtopx.io.pointcloud import las

nube = las.read(r"C:\datos\vuelo.laz").clouds[0].cloud

params = mdtopx.GridThinningParams()
params.step = 2.0
params.criterion = mdtopx.GridCriterion.LowestZ
params.exclude_classes = [7]   # ignora el ruido

resultado = mdtopx.thin_by_grid(nube, params)
print(len(nube), "->", len(resultado.cloud), "puntos")
```

## Ajuste de planos

### `fit_inclined_plane`

```python
fit_inclined_plane(points) -> FittedPlane
```

Ajusta por mínimos cuadrados un plano `nx·x + ny·y + nz·z + d = 0` a una lista de `Point3` (3 como
mínimo). `FittedPlane`:

| Propiedad | Contenido |
|---|---|
| `ok` | Si se ha podido ajustar. |
| `nx`, `ny`, `nz`, `d` | El plano; `(nx, ny, nz)` es la normal unitaria. |
| `std_dev` | Desviación típica de los residuos (`-1` si no se puede calcular). |
| `residuals` | Distancia con signo de cada punto al plano. |

### `fit_robust_plane`

```python
fit_robust_plane(points, tolerance, slope_limit=0.0, seed=[]) -> RobustPlane
```

Ajuste de plano que descarta los puntos atípicos: hace un ajuste inicial (con los puntos de `seed` si se
dan, o con todos), lo refina aumentando la tolerancia y elimina iterativamente los puntos a más de
`tolerance` del plano. Si `slope_limit` (en **radianes**) es mayor que 0 y la normal del plano se
inclina más que eso respecto a la vertical, el plano se rechaza.

`RobustPlane`:

| Propiedad | Contenido |
|---|---|
| `status` | `Ok` si se ha ajustado y hay puntos dentro de la tolerancia. |
| `rejected_by_slope` | Si se ha rechazado por `slope_limit`. |
| `nx`, `ny`, `nz`, `d` | El plano. |
| `std_dev` | Desviación típica de los residuos. |
| `slope_angle` | Ángulo de la normal con la vertical, en radianes. |
| `inliers`, `n_inliers` | Para cada punto de `points`, 1 si está a menos de `tolerance` del plano final; y cuántos hay. |

El ajuste inicial usa **todos** los puntos si no se da `seed`. Si hay puntos muy alejados del plano, ese
primer ajuste sale tan inclinado que casi ningún punto queda dentro de `tolerance` y el resultado es
`InvalidData`. En ese caso, pasa en `seed` puntos que sepas que están en el plano, o usa una tolerancia
mayor.

```python
import math
import mdtopx

puntos = [mdtopx.Point3(x, y, 100 + 0.02 * x) for x in range(10) for y in range(10)]
puntos.append(mdtopx.Point3(5, 5, 130))   # punto atípico a 30 m

semilla = [p for p in puntos if p.z < 101]   # puntos fiables para el ajuste inicial
plano = mdtopx.fit_robust_plane(puntos, tolerance=0.05, seed=semilla)
print(plano.status, plano.n_inliers, "de", len(puntos),
      f"inclinación {math.degrees(plano.slope_angle):.2f}°")   # Ok 100 de 101 inclinación 1.15°
```

## Trocear y filtrar archivos

Estas dos funciones leen y escriben **por partes**, sin cargar la nube en memoria, así que sirven para
archivos de cualquier tamaño. Reciben un `IoHost` (lo más sencillo es
[`mdtopx.io.default_host()`](mdtopx-io.md#funciones-del-paquete)) y trabajan solo con formatos que se
pueden leer y escribir por partes: **LAS, LAZ y E57**.

Las dos reciben una función `tile_name(info)` que devuelve la ruta de cada archivo de salida; su
extensión decide el formato, que puede ser distinto del de entrada. `info` es un `TileInfo`:

| Propiedad | Contenido |
|---|---|
| `index` | Número de archivo (0, 1, 2…, en orden de creación). |
| `has_pk` | Si `pk_start` y `pk_end` tienen valor (modos `Surfaces` y `Pk` con bandas fijas). |
| `pk_start`, `pk_end` | PK inicial y final del trozo. |

### `divide_cloud`

```python
divide_cloud(host, input_path, params, tile_name, progress=None) -> DivideResult
```

Trocea un archivo de nube. [`mdtopx.io.divide`](mdtopx-io.md#trocear-nubes-de-puntos) hace lo mismo
usando el `IoHost` por defecto. `DivideParams`:

| Propiedad | Modo | Significado |
|---|---|---|
| `mode` | — | Criterio de troceado (`DivideMode`): `Sequential`, `Grid` (por defecto), `Altitude`, `GpsInterval`, `Surfaces` o `Pk`. |
| `origin_x`, `origin_y`, `sheet_width`, `sheet_height` | `Grid` | Origen y tamaño de las hojas. |
| `z_min`, `vertical_step` | `Altitude` | Cota inicial y altura de cada banda. |
| `gps_start`, `gps_interval` | `GpsInterval` | Tiempo inicial y duración de cada banda, en segundos. |
| `gps_by_point_count` | `GpsInterval` | Agrupa intervalos de `gps_interval` segundos hasta llegar a unos `max_points_per_tile` puntos por archivo. |
| `surfaces` | `Surfaces` | Lista de `DivideSurface` (`contour`: polígono cerrado; `pk_start`, `pk_end`). Cada punto va a la primera superficie que lo contiene en planta; los de fuera se descartan. |
| `axis` | `Pk` | Eje: lista de `Point3`. Cada punto se proyecta en planta sobre el eje. |
| `pk_step`, `pk_initial` | `Pk` | Longitud de cada banda de PK y PK del inicio del eje. |
| `max_axis_distance` | `Pk` | Descarta los puntos a más distancia del eje (0 = sin límite). |
| `pk_by_point_count` | `Pk` | Usa bandas de longitud variable con unos `max_points_per_tile` puntos cada una, en lugar de `pk_step`. |
| `max_points_per_tile` | Todos | Máximo de puntos por archivo: al llegar se abre otro (0 = sin límite). En `Sequential` es el tamaño de cada trozo. |
| `subsample` | Todos | Conserva uno de cada N puntos de la entrada (0 o 1 = todos). |
| `decimals` | Todos | Escala de las coordenadas de salida (3 = milímetro). |

`DivideResult`: `status`, `tiles` (archivos generados) y `points` (puntos repartidos).

### `filter_cloud`

```python
filter_cloud(host, input_path, params, tile_name, progress=None) -> FilterResult
```

Filtra un archivo de nube con una rejilla regular, dejando el **último** punto que cae en cada celda con
todos sus atributos. `FilterParams`:

| Propiedad | Significado |
|---|---|
| `grid_step` | Tamaño de la celda (mayor que 0). |
| `min_x`, `min_y`, `min_z`, `max_x`, `max_y`, `max_z` | Caja que cubre la rejilla. Los puntos de fuera se asignan a la celda del borde más cercana. |
| `three_d` | False: celdas en planta (se ignora la Z); True: celdas 3D. |
| `max_points_per_tile` | Reparte el resultado en archivos de este tamaño (0 = un solo archivo). |
| `decimals` | Escala de las coordenadas de salida. |

`FilterResult`: `status`, `points_in`, `points_out` y `tiles`.

```python
import mdtopx
from mdtopx.io import default_host

params = mdtopx.FilterParams()
params.grid_step = 0.5
params.min_x, params.min_y, params.min_z = 440000, 4470000, 0
params.max_x, params.max_y, params.max_z = 441000, 4471000, 2000

resultado = mdtopx.filter_cloud(default_host(), r"C:\datos\vuelo.laz", params,
                                lambda info: rf"C:\datos\filtrado_{info.index}.laz")
print(resultado.points_in, "->", resultado.points_out, "puntos")
```
