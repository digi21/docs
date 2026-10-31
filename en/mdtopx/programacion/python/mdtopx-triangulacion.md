# Triangulation and volumes
<!-- id: mdtopx-triangulacion -->
<!-- origen: ee30b76b769c04903f29b834941c8feb239142c8 -->

Functions in [`mdtopx`](mdtopx.md) for generating meshes from points and calculating volumes.

## `triangulate`

```python
triangulate(points, options=Options(), constraints=[], progress=None) -> Result
```

2D Delaunay triangulation (TIN) of a `Point3` list, identical to MDTopX's triangulation.

| Argument | Contents |
|---|---|
| `points` | List of `Point3` or `(x, y, z)` tuples. |
| `options` | An `Options`, described below. |
| `constraints` | List of `ConstraintEdge(a, b, code)`: sides the triangulation must respect, **breaklines**. `a` and `b` index `points`; integer `code` is copied to triangles. |
| `progress` | Progress function; see [Status and progress](mdtopx.md#status-and-progress). |

`Options`:

| Property | Default | Meaning |
|---|---|---|
| `decimals` | 3 | Triangulation precision: coordinates are rounded to `10**-decimals` (3 = millimeter). |
| `max_edge_length` | 0 | Discards triangles with any side longer than this (0 = unlimited). |
| `intersection_z` | 0 | Elevation of points created where breaklines intersect: 0 independent, 1 average, 2 highest, 3 lowest. |

Returns a `Result` with `status` and `mesh`. The first `mesh` vertices are the input points in the same order. On sides following a breakline, triangle `constraint1..3` contains that line's `code`.

To respect breaklines, triangulation **adds vertices** at the end of `vertices`:

- Where a breakline crosses a triangulation side, with elevation interpolated along the breakline.
- Where two breaklines intersect, with elevation determined by `intersection_z`.

An input point lying exactly on a breakline also takes the breakline's elevation there.

```python
import mdtopx

puntos = [(0, 0, 100), (10, 0, 101), (10, 10, 103), (0, 10, 102), (7, 3, 108)]
ruptura = mdtopx.ConstraintEdge(0, 2, 1)   # required side 0-2, code 1

opciones = mdtopx.Options()
opciones.max_edge_length = 50

resultado = mdtopx.triangulate([mdtopx.Point3(p) for p in puntos], opciones, [ruptura])
if resultado.status == mdtopx.Status.Ok:
    malla = resultado.mesh
    print(len(malla.vertices), "vértices")   # 6: the breakline added one at (5, 5, 101.5)
    for t in malla.triangles:
        print(t.a, t.b, t.c, "rupturas:", t.constraint1, t.constraint2, t.constraint3)
```

## `tetrahedralize`

```python
tetrahedralize(points, options=Options3(), progress=None) -> Result3
```

3D Delaunay tetrahedralization of a `Point3` list. `Options3` contains only `decimals` (3). Returns a `Result3` with `status` and `mesh`, a `TetraMesh` containing `vertices` and `tetrahedra`, a list of `Tetra` with indices `a`, `b`, `c`, `d` for their four vertices.

## `surface_3d`

```python
surface_3d(points, max_distance, options=Options3(), progress=None) -> Result
```

Enclosing surface of a 3D cloud: tetrahedralizes points and returns a `Mesh` containing faces separating tetrahedra whose edges are shorter than `max_distance`, measured in 3D meters, from those with longer edges. Obtains surfaces of objects that are not functions of `(x, y)`, such as a stockpile with vertical walls.

## `cut_fill_tin`

```python
cut_fill_tin(vertices, triangles, precision=1.0) -> CutFillResult
```

Cut and fill volumes for a mesh whose vertex `z` values contain **elevation differences**, for example final terrain minus original terrain. Sums triangular prisms above 0 for fill and below 0 for cut. `precision` converts mesh units to meters, 1 if already in meters.

`CutFillResult`:

| Property | Contents |
|---|---|
| `fill`, `cut` | Fill (`z > 0`) and cut (`z < 0`, reported positive) volumes, in m³. |
| `fill_area`, `cut_area` | Fill and cut plan areas, in m². |
| `height_min`, `height_max` | Minimum and maximum elevation differences. |
| `height_mean` | Sum of triangle mean heights, **without dividing** by their count. |
| `volume_count` | Number of prisms calculated. |

```python
import mdtopx

# Elevation differences at the vertices of a 10 x 10 m mesh
vertices = [mdtopx.Point3(0, 0, 1), mdtopx.Point3(10, 0, 1),
            mdtopx.Point3(10, 10, -1), mdtopx.Point3(0, 10, -1)]
triangulos = mdtopx.triangulate(vertices).mesh.triangles

vol = mdtopx.cut_fill_tin(vertices, triangulos)
print(f"Terraplén {vol.fill:.2f} m³ en {vol.fill_area:.2f} m², desmonte {vol.cut:.2f} m³")
```
