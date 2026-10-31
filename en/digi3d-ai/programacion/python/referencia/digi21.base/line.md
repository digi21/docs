# Line
<!-- id: line-4 -->
<!-- origen: 08a79c1973ee0476743e3e115dc736aa90067aa2 -->

Module: [digi21.base](README.md)

An open or closed polyline, inheriting from [Geometry](geometry.md).

```python
Line(codes, coordinates=[])
```

| Argument | Type | Description |
|---|---|---|
| `codes` | iterable | Codes (`FeatureCode` or `str`) |
| `coordinates` | `list[tuple]` | `(x, y, z)` vertex list |

## Properties

| Property | Type | Description |
|---|---|---|
| `closed` | `bool` | Whether the line is closed |
| `closed_2d` | `bool` | Whether closed horizontally (2D) |
| `area` | `float` | Line area |
| `perimeter_2d` | `float` | Horizontal (2D) perimeter |
| `perimeter_3d` | `float` | Spatial (3D) perimeter |
| `calculate_interior_point` | `tuple` | `(x, y, z)` coordinates of an interior point |
| `length_and_width` | `tuple` | Line `(largo, ancho)` |
| `tangent_first` | `tuple` | Tangent vector at the first point |
| `tangent_last` | `tuple` | Tangent vector at the last point |

## Construction and editing methods

| Method | Returns | Description |
|---|---|---|
| `add_point(coordinates)` | `int` | Append a vertex.<br>Return the resulting vertex count |
| `add_points(coordinates)` | — | Append multiple vertices |
| `close()` | — | Close the line |
| `reverse()` | — | Reverse line direction |
| `smooth(increment)` | — | Smooth the line |
| `generalize(tolerance, angular_tolerance)` | `bool` | Generalize the line.<br>Return `True` if modified |
| `parallelize(distance)` | — | Offset/parallelize by the specified distance |
| `generate_spline()` | — | Generate a spline from the vertices |
| `remove_duplicate_points(in_2d=False)` | — | Remove consecutive duplicate vertices |
| `remove_loops()` | — | Remove line loops |
| `add_arc_3points(origin, middle, end, min_points, max_points)` | `bool` | Add a three-point arc |
| `add_circle(a, b, c, max_points)` | — | Add a circle through three given points |
| `add_circle_xy(center, radius, max_points)` | — | Add an XY-plane circle from center and radius |

## Query methods

| Method | Returns | Description |
|---|---|---|
| `calculate_position_point(coordinates)` | [PointLineRelativePosition](pointlinerelativeposition.md) | Position of coordinates (or a `point`) relative to the line |
| `search_segment(coordinates)` | `tuple` | Nearest segment: `(distancia, (x,y,z) del corte, nº de segmento)`. Also accepts a `point` |
| `search_vertex(coordinates)` | `tuple` | Nearest vertex: `(distancia, (x,y,z) del corte, nº de vértice)`. Also accepts a `point` |
| `search_vertex(coordinates, first_vertex, last_vertex=-1)` | `int` | Nearest vertex between two indices.<br>Return its index |
| `project_origin_or_end(limit, origin, infinite_limit_extremes=True, allow_cut=True, allow_stretch=True)` | `tuple` | Project start/end onto a boundary: `(¿estirada?, (x,y,z) del corte, nº de segmento)` |
| `line_cross_line(line)` | `bool` | True if both lines intersect |
| `calculate_cross_coordinates(other)` | `tuple` | `(¿se cortan?, segmento_self, segmento_other, (x,y,z) del corte)` |
| `direction_vector(index)` | `tuple` | Direction vector of the segment starting at the specified vertex |
| `distance_to_vertex(coordinates, vertex)` | `float` | Distance from coordinates to a specified vertex |
| `has_repeated_points(distance)` | `bool` | True if repeated vertices exist within the given distance |
| `bounds_between_vertices(first_vertex, last_vertex)` | `tuple` | Bounding box between two vertices: `((xmin,ymin,zmin),(xmax,ymax,zmax))` |

Also inherits [Geometry](geometry.md) properties, methods, and spatial relations.

## Example

```python
from digi21.base import Line, PointLineRelativePosition

linea = Line(["CARR"])
linea.add_point((0, 0, 0))
linea.add_point((10, 0, 0))
linea.add_point((10, 10, 0))

if linea.calculate_position_point((5, 5, 0)) == PointLineRelativePosition.Inside:
    print("dentro")
```

## See also

* [Polygon](polygon.md) — closed line with holes.
* [PointLineRelativePosition](pointlinerelativeposition.md)
* [Geometry](geometry.md)
