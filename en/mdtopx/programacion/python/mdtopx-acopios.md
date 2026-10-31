# Stockpile volumes
<!-- id: mdtopx-acopios -->
<!-- origen: 2649945c56689ac2f67fbd31d965c36a912a83e6 -->

Functions in [`mdtopx`](mdtopx.md) for classifying an indoor industrial building point cloud, such as a SLAM scan, and **calculating material stockpile volumes**. This is the same process MDTopX uses for stockpile volumes by zone.

Three steps:

1. **`prepare_walls`**, optional: prepares the building wall cloud.
2. **`classify_ground_roof`**: separates ground, roof and noise, obtaining the ground mesh.
3. **`classify_stockpiles_by_zone`**: calculates each zone's stockpile volume above the ground.

All measurements are in meters.

## `prepare_walls`

```python
prepare_walls(walls, params, progress=None) -> WallsResult
```

Converts a cloud containing only building walls (`walls`, a `PointCloud`) into the two inputs used by later steps. `WallsParams`:

| Property | Default | Meaning |
|---|---|---|
| `grid_step` | 0.5 | Cell size for thinning the wall cloud. |
| `offset` | 0.5 | Half-width of the band created around walls. |
| `decimals` | 3 | Coordinate precision. |
| `walls_quantum` | 0.01 | Rounding applied to the wall cloud before use, matching MDTopX; 0 for no rounding. |

`WallsResult`: `status`, `low_wall_points`, wall-base points for `classify_ground_roof`, and `wall_outlines`, wall-band outlines for `classify_stockpiles_by_zone`.

## `classify_ground_roof`

```python
classify_ground_roof(cloud, params, low_wall_points=[], progress=None) -> GroundRoofResult
```

Classifies `cloud` points as ground (class 2), roof (6), noise (7) or unclassified (1). **Modifies** cloud point classification. `GroundRoofParams`:

| Property | Default | Meaning |
|---|---|---|
| `grid_step` | 0.5 | Base process cell size. |
| `decimals` | 3 | Coordinate precision. |
| `projection_mode` | `RasterMDTopX` | Point projection onto intermediate meshes (`ProjectionMode`): `RasterMDTopX`, matching MDTopX on a grid of the cell size, or `Triangles`, exact projection onto triangles. |

`GroundRoofResult`: `status`, `ground_mesh`, the ground `Mesh`, `ground_count` and `roof_count`.

## `classify_stockpiles_by_zone`

```python
classify_stockpiles_by_zone(cloud, zone_outlines, zone_labels, ground_mesh, params,
                            wall_outlines=[], progress=None) -> StockpileByZoneResult
```

Calculates the stockpile volume in each building zone. The cloud must first pass through `classify_ground_roof`; `ground_mesh` is its returned ground mesh.

| Argument | Contents |
|---|---|
| `zone_outlines` | Closed zone outlines: list of `Contour(points, code)`. |
| `zone_labels` | Zone names: list of `ZoneLabel(position, name)`. Each name is assigned to the first outline containing its position. Unnamed zones are excluded from volume calculations. |
| `wall_outlines` | Wall outlines returned by `prepare_walls`. |

`StockpileByZoneParams`:

| Property | Default | Meaning |
|---|---|---|
| `grid_step` | 0.5 | Base process cell size. |
| `classify_cloud` | False | Also classifies each zone's points as stockpile, wall, high point, noise or ground, then rebuilds the stockpile surface from stockpile points. **Changes** volumes. |
| `decimals` | 3 | Coordinate precision. |

`StockpileByZoneResult`: `status` and `zones`, one `ZoneResult` per named zone:

| Property | Contents |
|---|---|
| `name` | Zone name. |
| `valid` | Whether volume calculation succeeded. If False, for example a zone without ground or points, figures are 0. |
| `volume` | Stockpile volume above ground, in m³. |
| `area` | Plan area, in m². |
| `height_mean`, `height_max` | Mean and maximum stockpile height. |
| `volume_count` | Number of prisms calculated. |
| `centroid` | Stockpile center of mass, a `Point3`, for example for labeling its volume. |

## Example

Building cloud in LAZ, zone outlines and names in DXF:

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

`classify_ground_roof` and, with `classify_cloud`, `classify_stockpiles_by_zone` modify point classification in `nube`. To save the classified cloud, place it in a scene:

```python
entidad = mdtopx.CloudEntity()
entidad.cloud = nube
entidad.is_lidar = True

salida = mdtopx.Scene()
salida.clouds = [entidad]
las.write(r"C:\nave\nave_clasificada.laz", salida)
```
