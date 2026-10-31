# Geometry
<!-- id: geometry -->
<!-- origen: 66313e3147a3e1d4b3fda54e89860a859a702e5d -->

Module: [digi21.base](README.md)

Base class for all geometries. Defines properties, methods, and coordinate access shared by [Point](point.md), [Text](text.md), [Line](line.md), [Polygon](polygon.md), and [Complex](complex.md). Cannot be constructed directly.

## Coordinates

Every geometry behaves as a sequence of `(x, y, z)` vertices:

| Operation | Description |
|---|---|
| `len(geometry)` | Vertex count |
| `geometry[i]` | Vertex `i` as an `(x, y, z)` tuple |
| `for v in geometry:` | Iterate over vertices as `(x, y, z)` tuples |

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `codes` | `list[FeatureCode]` | R/W | Geometry [code](featurecode.md) list |
| `attributes` | `dict` | R | `{str: valor}` dictionary of database attributes |
| `color` | `int` | R/W | Color |
| `weight` | `int` | R/W | Width |
| `fill_color` | `int` | R/W | Fill color |
| `virtual_` | `bool` | R/W | Whether the geometry is virtual |
| `deleted` | `bool` | R | True if marked as deleted |
| `min` | `tuple` | R | Minimum bounding box coordinates `(x, y, z)` |
| `max` | `tuple` | R | Maximum bounding box coordinates `(x, y, z)` |
| `first_vertex` | `tuple` | R | First vertex `(x, y, z)` |
| `last_vertex` | `tuple` | R | Last vertex `(x, y, z)` |
| `code_count` | `int` | R | Code count |
| `owner` | `tuple` | R | `(geometría_propietaria, índice)` if in a container;<br>`(None, 0)` otherwise |
| `file` | [`DrawingFile`](drawingfile.md) | R | Loaded drawing window file containing the geometry, for example `g.file.path`. Returns `None` for complex geometry members and geometries not added to the drawing. Available only in scripts running inside Digi3D.AI after importing `digi3d` |

## Methods

| Method | Returns | Description |
|---|---|---|
| `clone()` | `Geometry` | Return a geometry clone |
| `compute_bounds()` | — | Recalculate minimum and maximum bounding box coordinates from geometry coordinates |
| `transform(function)` | — | Apply an `(x, y, z) -> (x, y, z)` function to every coordinate |
| `displace(delta)` | — | Move the geometry by `(dx, dy, dz)` |
| `maxmin_overlaps(other)` | `bool` | True if the 3D bounding boxes of this geometry and `other` overlap |
| `maxmin_overlaps_2d(other)` | `bool` | True if the horizontal (2D) bounding boxes of this geometry and `other` overlap |
| `identical_xy(other)` | `bool` | True if both geometries are identical in XY |
| `nearest_vertex_segment(coordinates)` | `tuple` | Nearest vertex and segment: `(n_vertice, dist_vertice, (x,y,z), n_segmento, dist_segmento, (x,y,z))` |
| `completely_inside(window)` | `bool` | True if entirely inside the window (a [Line](line.md)) |
| `completely_outside(window)` | `bool` | True if entirely outside the window (a [Line](line.md)) |
| `overlaps_window(window, inside=True)` | `bool` | True if overlapping the window (a [Line](line.md)) |
| `has_code(name)` | `bool` | True if the geometry has the specified code |
| `add_code(code)` | `bool` | Add a code (`FeatureCode` or `str`).<br>Return `True` if added |
| `remove_code(code)` | — | Remove the specified code (`FeatureCode` or `str`) |

## Spatial relations

Methods query spatial relationships with another geometry, in a Shapely-like style. Behavior depends on the **concrete types** of both geometries. For `within`, `adjacent`, `terminates_within`, and `completely_within`, the argument is the **area**, accepting a [Polygon](polygon.md) or closed [Line](line.md).

> These relationships use **vertices and shared nodes**, rather than computed intersections. Comparisons are horizontal, ignoring Z. Unsupported type combinations raise `TypeError`.

| Method | `self` | Argument | True if… |
|---|---|---|---|
| `disjoint(other)` | Point/Line/Polygon | Point/Line/Polygon | The geometries are disjoint |
| `coincident(other)` | Point | Point/Line/Polygon | The point coincides with the other geometry |
| `coincident_and_terminates(line)` | Point | Line | The point coincides with a line endpoint |
| `within(area)` | Point/Line/Polygon | area | The geometry is inside the area |
| `completely_within(area)` | Polygon | area | The area is entirely within the other area |
| `adjacent(area)` | Line/Polygon | area | The geometry is adjacent to the area |
| `terminates_within(area)` | Line | area | The line ends inside the area |
| `crosses(other)` | Line | Line/Polygon | The line crosses the other line or area |
| `cross_vertices(line, stop_at_first=False)` | Line | Line | Return the **vertex index list** where lines cross |
| `overlaps(other)` | Line/Polygon | Line/Polygon | The geometries overlap |
| `equals(other)` | Line/Polygon | Line/Polygon | The geometries are equal |
| `touches(other)` | Line/Polygon | Line/Polygon | They share a point (touch) |
| `endpoint_touches(other)` | Line | Line/Polygon | A line endpoint touches an endpoint of the other line/area |
| `endpoint_touches_interior(line)` | Line | Line | A line endpoint touches the other line away from its endpoints |

### Relations between two areas

When `self` is a [Polygon](polygon.md) and the argument is a polygon or closed line, `equals`, `disjoint`, `touches`, `adjacent`, `completely_within`, `within`, and `overlaps` are mutually exclusive: exactly one applies to each pair `a`, `b`.

| Relation | True |
|---|---|
| Equal | `a.equals(b)` |
| Disjoint | `a.disjoint(b)` |
| Touching | `a.touches(b)` |
| Adjacent | `a.adjacent(b)` |
| `a` completely inside `b` | `a.completely_within(b)` |
| `a` inside `b` | `a.within(b)` |
| `b` completely inside `a` | `b.completely_within(a)`, if `b` is a polygon |
| `b` inside `a` | `b.within(a)`, if `b` is a polygon |
| Overlapping | `a.overlaps(b)` |

Each area vertex is checked for coincidence with a vertex of the other area (shared vertex), or whether it is inside or outside the other area. A vertex inside a hole counts as outside. Vertices on an edge that do not coincide with an area vertex are ignored. Results do not depend on starting vertex or ring traversal direction.

| Relation | Condition |
|---|---|
| Equal | Outer rings and holes have the same vertices, with any starting vertex and direction. Consecutive repeated vertices are ignored. Also equal if shared vertices exist and no vertex of either area is inside or outside the other (unshared vertices lie on the other area edges) |
| Disjoint | No area vertex is inside the other and no vertices are shared |
| `a` completely inside `b` | Vertices of `a` are inside `b`, none shared, and no vertex of `b`, including holes, is inside `a` |
| `a` inside `b` | No vertex of `a` is outside `b`, at least one is shared, and no vertex of `b`, including holes, is inside `a`. If no vertex of `a` is inside `b`, check whether the interior point of `a` is inside `b` |
| Adjacent | No area vertex is inside the other, shared vertices exist, and at least one edge is shared (two shared vertices consecutive in both rings) |
| Touching | No area vertex is inside the other, shared vertices exist, and no edge is shared |
| Overlapping | Any other case: some area vertices are inside the other, and neither area contains the other |

Areas crossing without shared vertices at the crossing or vertices inside the other area are treated as disjoint: the crossing goes undetected. Unclosed, zero-area, or spiked rings (a vertex whose two neighbors coincide) cause these relations to raise `RuntimeError` with the reason and coordinates.

## Example

```python
# Move every geometry in a file 10 m along X
for geometry in drawing:
    geometry.displace((10.0, 0.0, 0.0))
```

## See also

* [Point](point.md), [Text](text.md), [Line](line.md), [Polygon](polygon.md), [Complex](complex.md)
* [Course: geometry relations](../../aplicaciones-de-consola/ejemplos/relaciones-entre-geometrias.md)
