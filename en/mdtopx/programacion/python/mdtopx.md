# Package `mdtopx`
<!-- id: mdtopx-3 -->
<!-- origen: a8cecad07ee49e68e01ec997f2727810672d3e9c -->

The root package contains MDTopX's **calculation engine**: geometric types, the **scene** exchanged by all formats, and algorithms. This is the same engine MDTopX uses internally.

```python
import mdtopx
```

Algorithms are documented by area:

| Page | Contents |
|---|---|
| [Triangulation and volumes](mdtopx-triangulacion.md) | `triangulate`, `tetrahedralize`, `surface_3d`, `cut_fill_tin`. |
| [Digital elevation models](mdtopx-mde.md) | `Grid`, shading, slopes, aspects, hypsometric tints and slope vectors. |
| [Point clouds](mdtopx-nubes.md) | `PointCloud`, grid filtering, plane fitting, file splitting and filtering. |
| [Stockpile volumes](mdtopx-acopios.md) | Ground and roof classification, walls and volumes by zone. |

## Geometric types

| Type | Contents |
|---|---|
| `Point3` | 3D point: `x`, `y`, `z` (ground coordinates, `double`). Construct with `Point3(x, y, z)` or `Point3((x, y, z))`. |
| `Triangle` | Triangle: zero-based indices `a`, `b`, `c` into its mesh's vertex list, and `constraint1`, `constraint2`, `constraint3`: breakline codes for sides a-b, b-c and c-a (`-1` = none). |
| `Mesh` | Triangulated mesh: `vertices` (list of `Point3`) and `triangles` (list of `Triangle`). |
| `LidarPoint` | Cloud point with LiDAR attributes. See [Point clouds](mdtopx-nubes.md). |
| `PointCloud` | Point cloud. See [Point clouds](mdtopx-nubes.md). |
| `Grid` | Regular elevation grid. See [Digital elevation models](mdtopx-mde.md). |

A tuple `(x, y, z)` or `(x, y)` with `z = 0` can also be passed wherever a `Point3` is expected.

> Lists (`vertices`, `triangles`, `points`, and scene lists such as `polylines` and `meshes`) are **copied** each time Python accesses them. This has two consequences:
>
> - In loops, first store them in a variable: `vertices = malla.vertices`, then `for v in vertices: ...`.
> - To modify them, **do not use** `append` or assign individual items (`escena.polylines.append(l)` changes a copy without updating the scene). Build the list and **assign it**: `escena.polylines = [linea1, linea2]` or `escena.polylines = escena.polylines + [linea]`.

## The scene

A `Scene` is the container read and written by all [`mdtopx.io`](mdtopx-io.md) formats. Each format uses the corresponding lists:

| Property | Contents | Element type |
|---|---|---|
| `points` | Individual points | `PointEntity` (`p`, `layer`, `id`, `attributes`) |
| `polylines` | Lines and polygons | `Polyline` (`vertices`, `closed`, `layer_code`, `digi_attributes`, `perimeter`, `area`…) |
| `texts` | Texts | `TextEntity` (`pos`, `text`, `height`, `rotation`, `justification`, `layer_code`…) |
| `clouds` | Point clouds | `CloudEntity` (`cloud`, `is_lidar`, `layer`, `id`) |
| `meshes` | Triangulated meshes | `MeshEntity` (`mesh`, `id`, `layer_code`, `layer`) |
| `grids` | Elevation grids | `GridEntity` (`grid`) |
| `images` | Color images | `ImageEntity` (`width`, `height`, `channels`, `data`, georeferencing…) |
| `layers` | Layers or codes | `Layer` (`name`, `code`) |
| `srs` | WKT reference system, if stored by the format | `str` |

`is_empty()` indicates whether the scene contains nothing.

```python
import mdtopx
from mdtopx.io.vector import dxf

linea = mdtopx.Polyline()
linea.vertices = [(0, 0, 10), (10, 0, 12), (10, 10, 11)]
linea.layer_code = "EJE"

escena = mdtopx.Scene()
escena.polylines = [linea]   # assign the list: append would not modify the scene

dxf.write(r"C:\datos\eje.dxf", escena)
```

## Status and progress

Engine functions return a `Status`, alone or within a result object:

| Value | Meaning |
|---|---|
| `Ok` | Successful. |
| `NoPoints` | Insufficient data, for example fewer than three points for triangulation. |
| `InvalidData` | Invalid data or parameters. |
| `TriangulationError` | Triangulation failed. |
| `Cancelled` | User canceled through the progress function. |

Potentially lengthy functions accept `progress`: a function receiving the completed fraction, from `0.0` to `1.0`, and returning `True` to continue or `False` to cancel.

```python
def progreso(fraccion):
    print(f"\r{fraccion:.0%}", end="")
    return True

resultado = mdtopx.triangulate(puntos, progress=progreso)
```
