# Digi21.DigiNG.Entities.Relations
<!-- id: digi21.diging.entities.relations -->
<!-- origen: 1926a1ec959d22bc5b035ec2ff2c68808ed5c36d -->

Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Static classes that analyze the geometric relation between two entities: point to point, point to line, point to area, line to line, line to area and area to area.

## Classes

| Class | Description |
| :--- | :--- |
| [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/) | Relation between two areas. Exactly one relation holds for each pair of areas. |
| [LineArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/) | Relation between a line and an area. |
| [LineLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/) | Relation between two lines. |
| [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/) | Relation between a point and an area. Exactly one relation holds for each point and area. |
| [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/) | Relation between a point and a line. |
| [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/) | Relation between two points. |

## Common rules

* An area is a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) or a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). A point inside a polygon's hole is outside the polygon.
* Methods accept read-only types. [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) and [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) derive from those types, so the methods also accept entities that are not yet in a drawing file. A `Point` created in memory has an uncalculated bounding box until `Point.Coordinate` is assigned; `Offset` methods do not recalculate it.
* Comparisons take place in the XY plane: only X and Y coordinates count. Z is ignored.
* Two vertices coincide if their X and Y coordinates differ by less than [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). If `Precision.Epsilon` is 0, the coordinates must be equal.
* Before analyzing vertices, each method compares the two entities' bounding boxes in the XY plane (minimum and maximum X and Y coordinates). This comparison uses no tolerance. If the boxes do not touch, the entities have no common point.
* Methods analyze vertices: they check whether a vertex coincides with a vertex of the other entity or lies inside, outside or on an area's boundary. They do not calculate intersections between edges. Two entities crossing without a vertex at the crossing are not considered to touch.
* All methods throw `ArgumentNullException` if an argument is `null`.
