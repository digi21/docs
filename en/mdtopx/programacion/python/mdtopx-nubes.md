# Point clouds
<!-- id: mdtopx-nubes -->
<!-- origen: ebc35e60b80fc25356373ecd0f49bc9974cd7866 -->

Functions in [`mdtopx`](mdtopx.md) for grid filtering, plane fitting, and splitting or filtering point cloud files without loading them into memory.

## `LidarPoint` and `PointCloud`

A `LidarPoint` is a point with LiDAR attributes. Create with `LidarPoint(x, y, z)`:

| Property | Contents |
|---|---|
| `x`, `y`, `z` | Ground coordinates. |
| `intensity` | Intensity, 0 to 65535. |
| `r`, `g`, `b` | Color, 0 to 255. |
| `gps_time` | GPS time. |
| `angle` | Scan angle in degrees. |
| `classification` | LAS class. |
| `return_number`, `number_of_returns` | Return number and number of pulse returns. |
| `scan_direction`, `edge_of_flight_line` | Scan direction and flight line edge flags, 0 or 1. |
| `source` | Flight line identifier, *point source ID*. |

A `PointCloud` contains the `points` list. `add(punto)` adds a point; `len(nube)` or `size()` returns its count. Unlike lists, `add` **does** modify the cloud.

## `thin_by_grid`

```python
thin_by_grid(cloud, params, progress=None) -> ThinningResult
```

Filters a cloud with a regular grid, retaining **one point per cell**, selected or calculated by a criterion. `GridThinningParams`:

| Property | Default | Meaning |
|---|---|---|
| `step` | 1 | Cell size in meters. |
| `origin_x`, `origin_y` | 0 | Grid origin offset from the cloud's minimum corner. |
| `criterion` | `LowestZ` | Criterion (`GridCriterion`, below). |
| `snap_to_cell` | False | Places the resulting point on its cell node. |
| `voxel_3d` | False | Uses 3D cells, equal-sized cubes; forces `Mean`. |
| `neighbor_distance_precision` | 0 | Density scale for density criteria, 0 for no scaling. |
| `exclude_classes` | `[]` | LAS classes to ignore. |

Criteria (`GridCriterion`):

| Value | Point in each cell |
|---|---|
| `Random` | First point falling in the cell. |
| `Mean` | Mean of cell points. |
| `WeightedMean` | Mean weighted by inverse distance to the node. |
| `AngleWeightedMean` | Mean weighted by scan angle, favoring vertical measurements. |
| `LowestZ`, `HighestZ` | Lowest or highest elevation. |
| `LowestIntensity`, `HighestIntensity` | Lowest or highest intensity. |
| `LowestGps`, `HighestGps` | Lowest or highest GPS time. |
| `LowestDensity`, `HighestDensity` | Lowest or highest neighbor density. |
| `Report` | Does not filter; calculates elevation residual statistics relative to each cell's mean. |

`ThinningResult`: `status` and filtered `cloud`. With `Report`, `cloud` is empty and results are in `std_dev`, `res_max`, `res_min` and `report_count`.

```python
import mdtopx
from mdtopx.io.pointcloud import las

nube = las.read(r"C:\datos\vuelo.laz").clouds[0].cloud

params = mdtopx.GridThinningParams()
params.step = 2.0
params.criterion = mdtopx.GridCriterion.LowestZ
params.exclude_classes = [7]   # ignore noise

resultado = mdtopx.thin_by_grid(nube, params)
print(len(nube), "->", len(resultado.cloud), "puntos")
```

## Plane fitting

### `fit_inclined_plane`

```python
fit_inclined_plane(points) -> FittedPlane
```

Least-squares fit of plane `nx·x + ny·y + nz·z + d = 0` to a list of at least three `Point3`. `FittedPlane`:

| Property | Contents |
|---|---|
| `ok` | Whether fitting succeeded. |
| `nx`, `ny`, `nz`, `d` | Plane; `(nx, ny, nz)` is its unit normal. |
| `std_dev` | Residual standard deviation, `-1` if unavailable. |
| `residuals` | Signed distance of each point to the plane. |

### `fit_robust_plane`

```python
fit_robust_plane(points, tolerance, slope_limit=0.0, seed=[]) -> RobustPlane
```

Fits a plane while discarding outliers. Performs an initial fit with `seed` points if supplied, otherwise all points; refines it by increasing tolerance; then iteratively removes points farther than `tolerance` from the plane. If `slope_limit`, in **radians**, exceeds 0 and the plane normal's tilt from vertical exceeds it, the plane is rejected.

`RobustPlane`:

| Property | Contents |
|---|---|
| `status` | `Ok` if fitted with points within tolerance. |
| `rejected_by_slope` | Whether rejected by `slope_limit`. |
| `nx`, `ny`, `nz`, `d` | Plane. |
| `std_dev` | Residual standard deviation. |
| `slope_angle` | Normal's angle from vertical, in radians. |
| `inliers`, `n_inliers` | For each point in `points`, 1 if closer than `tolerance` to the final plane; and their count. |

Without `seed`, the initial fit uses **all** points. Very distant outliers can tilt this fit so far that almost no points fall within `tolerance`, returning `InvalidData`. Supply known plane points in `seed` or use a larger tolerance.

```python
import math
import mdtopx

puntos = [mdtopx.Point3(x, y, 100 + 0.02 * x) for x in range(10) for y in range(10)]
puntos.append(mdtopx.Point3(5, 5, 130))   # outlier 30 m away

semilla = [p for p in puntos if p.z < 101]   # reliable points for the initial fit
plano = mdtopx.fit_robust_plane(puntos, tolerance=0.05, seed=semilla)
print(plano.status, plano.n_inliers, "de", len(puntos),
      f"inclinación {math.degrees(plano.slope_angle):.2f}°")   # Ok 100 of 101, tilt 1.15°
```

## Split and filter files

These functions read and write **in chunks**, without loading the cloud into memory, supporting files of any size. They receive an `IoHost`, most easily [`mdtopx.io.default_host()`](mdtopx-io.md#package-functions), and support only chunk-readable and chunk-writable formats: **LAS, LAZ and E57**.

Both receive `tile_name(info)`, returning each output file's path. Its extension selects the format, which can differ from the input. `info` is a `TileInfo`:

| Property | Contents |
|---|---|
| `index` | File number, 0, 1, 2…, in creation order. |
| `has_pk` | Whether `pk_start` and `pk_end` are set, for `Surfaces` and fixed-band `Pk` modes. |
| `pk_start`, `pk_end` | Tile start and end chainage. |

### `divide_cloud`

```python
divide_cloud(host, input_path, params, tile_name, progress=None) -> DivideResult
```

Splits a cloud file. [`mdtopx.io.divide`](mdtopx-io.md#split-point-clouds) does the same with the default `IoHost`. `DivideParams`:

| Property | Mode | Meaning |
|---|---|---|
| `mode` | — | Splitting criterion (`DivideMode`): `Sequential`, `Grid` (default), `Altitude`, `GpsInterval`, `Surfaces` or `Pk`. |
| `origin_x`, `origin_y`, `sheet_width`, `sheet_height` | `Grid` | Sheet origin and size. |
| `z_min`, `vertical_step` | `Altitude` | Starting elevation and band height. |
| `gps_start`, `gps_interval` | `GpsInterval` | Start time and band duration, in seconds. |
| `gps_by_point_count` | `GpsInterval` | Groups `gps_interval`-second intervals until about `max_points_per_tile` points per file. |
| `surfaces` | `Surfaces` | List of `DivideSurface` (`contour`: closed polygon; `pk_start`, `pk_end`). Each point goes to the first surface containing it in plan; outside points are discarded. |
| `axis` | `Pk` | Axis: `Point3` list. Each point is projected onto the axis in plan. |
| `pk_step`, `pk_initial` | `Pk` | Chainage band length and axis starting chainage. |
| `max_axis_distance` | `Pk` | Discards points farther from the axis, 0 for no limit. |
| `pk_by_point_count` | `Pk` | Uses variable-length bands with about `max_points_per_tile` points instead of `pk_step`. |
| `max_points_per_tile` | All | Maximum points per file; opens another when reached, 0 for no limit. In `Sequential`, this is each tile's size. |
| `subsample` | All | Retains one in every N input points, 0 or 1 for all. |
| `decimals` | All | Output coordinate scale, 3 = millimeter. |

`DivideResult`: `status`, generated `tiles` and distributed `points`.

### `filter_cloud`

```python
filter_cloud(host, input_path, params, tile_name, progress=None) -> FilterResult
```

Filters a cloud file with a regular grid, retaining the **last** point falling in each cell, with all its attributes. `FilterParams`:

| Property | Meaning |
|---|---|
| `grid_step` | Cell size, greater than 0. |
| `min_x`, `min_y`, `min_z`, `max_x`, `max_y`, `max_z` | Grid bounding box. Outside points are assigned to the nearest boundary cell. |
| `three_d` | False: plan cells, ignoring Z; True: 3D cells. |
| `max_points_per_tile` | Splits results into files of this size, 0 for one file. |
| `decimals` | Output coordinate scale. |

`FilterResult`: `status`, `points_in`, `points_out` and `tiles`.

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
