# Package `mdtopx.io.pointcloud`
<!-- id: mdtopx-io-pointcloud -->
<!-- origen: ac7b446986325049394d6b23cdf7fa83afdb3b3f -->

**Point cloud** and **trajectory** formats. Read into `scene.clouds`, one `CloudEntity` per cloud with its `PointCloud` in `cloud`, and write scene clouds. All follow the [common interface](mdtopx-io.md#common-format-interface): `info`, `read`, `write`.

| Module | Format | Reads | Writes | Options |
|---|---|:-:|:-:|---|
| `las` | ASPRS LAS / LAZ (`.las`, `.laz`) | ✔ | ✔ | `write`: `decimals` (3) |
| `laz` | Same as `las` (same plugin) | ✔ | ✔ | `write`: `decimals` (3) |
| `e57` | ASTM E57 (`.e57`) | ✔ | ✔ | — |
| `pts` | Leica HDS PTS (`.pts`) | ✔ | ✔ | `write`: `decimals` (3), `lines_as_points` (False), `point_spacing` (0) |
| `ptx` | Leica HDS PTX (`.ptx`) | ✔ | ✔ | `write`: `decimals` (6) |
| `pcd` | PCL Point Cloud Data (`.pcd`) | ✔ | ✔ | `write`: `decimals` (3), `binary` (False) |
| `xyz` | ASCII XYZ (`.xyz`, `.txt`) | ✔ | ✔ | See below |
| `pcap` | Velodyne PCAP capture (`.pcap`) | ✔ | — | — |
| `topcon_ips` | Topcon IP-S2/IP-S3 trajectory (`.csv`) | ✔ | — | `read`: `as_line` (False) |
| `leica_pegasus` | Leica Pegasus trajectory (`.csv`) | ✔ | — | `read`: `as_line` (False) |
| `ladybug` | Ladybug trajectory (`.csv`) | ✔ | — | `read`: `as_line` (False) |

Format details:

- **LAS/LAZ**: creates a cloud per *point source ID* with all LAS attributes: intensity, returns, classification, angle, GPS time and color. Writes LAS 1.4, point format 6 or 7 with color; `.las` or `.laz` determines compression. `decimals` sets coordinate scale (3 = millimeter).
- **E57**: merges all scans into one cloud in ground coordinates, applying each scan's position, with intensity and color if present.
- **PTS**: each file block becomes a cloud. When writing, `lines_as_points` also exports polyline vertices as points; `point_spacing` greater than 0 first resamples them at that spacing.
- **PTX**: each scan becomes a cloud.
- **PCAP**: Velodyne sensor captures (VLP-16, HDL-32E). Coordinates are **local to the sensor**: GPS and IMU are not applied.
- **Trajectories**: all three formats use `.csv`; each module identifies its format by column count. With `as_line=True`, reads the trajectory as a polyline in `scene.polylines` instead of a cloud.

## XYZ

`xyz.read` accepts these options describing file columns (`[número de punto] x y z [intensidad] [r g b]`):

| Option | Default | Meaning |
|---|---|---|
| `has_point_number` | False | First column contains a point number. |
| `has_intensity` | False | Includes an intensity column. |
| `has_color` | False | Includes three color columns. |
| `as_line` | False | Reads points as one polyline instead of a cloud. |

`xyz.write` writes enabled columns in this order: `write_coordinates` (True), `write_classification`, `write_intensity`, `write_color`, `write_gps`, `write_id_source` (all False). `decimals` (6) sets decimal places. `class_filter` is a comma-separated list of LAS classes to write, empty for all.

## Examples

Count points in each LAZ class:

```python
from collections import Counter
from mdtopx.io.pointcloud import las

escena = las.read(r"C:\datos\vuelo.laz")
clases = Counter()
for nube in escena.clouds:
    for punto in nube.cloud.points:
        clases[punto.classification] += 1
print(sorted(clases.items()))
```

Convert ground points, class 2, from LAS to XYZ with intensity:

```python
from mdtopx.io.pointcloud import las, xyz

escena = las.read(r"C:\datos\vuelo.las")
xyz.write(r"C:\datos\suelo.xyz", escena, class_filter="2", write_intensity=True, decimals=3)
```
