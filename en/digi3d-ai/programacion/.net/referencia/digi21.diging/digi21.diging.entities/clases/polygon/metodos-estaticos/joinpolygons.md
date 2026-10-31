# JoinPolygons
<!-- id: joinpolygons -->
<!-- origen: 4dd903a97bc7ec9de26d49d6b87aaa4eb0d935c5 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns the polygon resulting from the union of the areas enclosed by two entities.

```csharp
public static Polygon JoinPolygons(Entity a, Entity b)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `a` | A closed line (`ReadOnlyLine`) or polygon (`ReadOnlyPolygon`). |
| `b` | A closed line (`ReadOnlyLine`) or polygon (`ReadOnlyPolygon`). |

The parameters are not modified.

## Return value

A new `Polygon`, belonging to no drawing file. The method splits both entities (outer boundaries and holes) at their intersections, removes duplicate sections (shared sides) and builds topology from the remaining sections. The outer boundary encloses the area not inside any other, and the holes are that area's holes.

The polygon takes its codes from the resulting boundary's first line, which may come from `a` or `b`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `Exception` | `a` or `b` is neither a line nor a polygon. The message says “first entity” even when the invalid entity is `b`. |
| `Exception` | The union forms more than one enclosed area that is not inside another; for example, if `a` and `b` do not touch. |
| `Exception` | Topological analysis finds duplicate points or single-point arcs, or there is insufficient data to build topology. |
| `NullReferenceException` | `a` or `b` is `null`. |

## Example

Read the [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) example.
