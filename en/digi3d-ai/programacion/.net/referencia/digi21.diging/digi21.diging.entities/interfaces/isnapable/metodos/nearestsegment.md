# NearestSegment
<!-- id: nearestsegment -->
<!-- origen: 1fc9bb180ce847a024f80af60f3af317e229022e -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Finds the entity's closest segment to a coordinate and calculates the coordinate's perpendicular projection onto that segment. Method of [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `coordinate` | Coordinate to project. |
| `calculatedCoordinate` | Returns the projection of `coordinate` onto the found segment. |
| `segment` | Returns the found segment's index: segment `i` joins vertices `i` and `i + 1`. |

## Return value

XY plane distance between `coordinate` and `calculatedCoordinate`.

| Type | Calculation |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | Projects `coordinate` perpendicularly in the XY plane onto each segment's infinite line. Considers only segments whose projection falls inside the rectangle defined by their two vertices, and chooses the one closest to `coordinate`; if two segments are equally distant from `coordinate`, chooses the lower index. For a polygon, only the outer boundary is analyzed. |
| `ReadOnlyPoint`, `Point`, `ReadOnlyText`, `Text` | `calculatedCoordinate` is `Coordinate`, `segment` is 0, and the return value is the XY plane distance between `coordinate` and `Coordinate`. Does not throw exceptions. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line or polygon without vertices. |
| `Exception` | The entity is a line or polygon, and the projection of `coordinate` falls on no segment. Also thrown if the entity has only one vertex, because there are no segments. |

## Example

The [ISnapable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#example) calls this method with a line and a point.
