# AnalyzePointPosition
<!-- id: analyzepointposition -->
<!-- origen: 65fa69461fdbe1e1153082a53f082ebb11bd381a -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates a coordinate's position relative to the area enclosed by the entity, in the XY plane. Method of [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
PointPosition AnalyzePointPosition(Point3D coordinate)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `coordinate` | Coordinate to analyze. Z is not used. |

## Return value

A [PointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/pointposition.md) value: `Exterior`, `Interior` or `Tangent` (on the boundary).

| Type | Calculation |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | Counts intersections of a ray starting at `coordinate` with line segments. Returns `Exterior` if the line has fewer than 4 vertices or `coordinate` is outside the line's minimum and maximum coordinates, and `Tangent` if `coordinate` lies on a segment. |
| `ReadOnlyPolygon`, `Polygon` | Analyzes the outer boundary first, as for a line. If `coordinate` is inside, analyzes each hole: returns `Tangent` if it lies on a hole's boundary and `Exterior` if it is inside a hole. |

In the reference package, the `ReadOnlyPolygon.AnalyzePointPosition` parameter is named `point`; in the installed assembly, it is named `coordinate`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line not closed in X and Y (`Closed` is `false`) or has fewer than 2 vertices. |

## Example

The [ICloseable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/#example) analyzes three coordinates relative to a polygon with a hole.
