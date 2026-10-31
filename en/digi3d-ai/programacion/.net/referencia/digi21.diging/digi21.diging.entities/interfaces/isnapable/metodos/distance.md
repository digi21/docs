# Distance
<!-- id: distance -->
<!-- origen: 371f565121d2718291086d10f7ea5fa87865740d -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns the vector from a coordinate to the entity's closest point. Method of [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
Point3D Distance(Point3D coordinate)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `coordinate` | Vector's origin coordinate. |

## Return value

A [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) with the difference `point más cercano - coordinate` in X, Y and Z. `Module` is the distance in space and `Point2D.Module` the XY plane distance.

| Type | Closest point |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | Calculates the closest vertex and projection onto the closest segment, like [NearestVertex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) and [NearestSegment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md), and uses the projection if it exists and is closer in the XY plane than the vertex; otherwise, uses the vertex. For a polygon, only the outer boundary is analyzed. Unlike `NearestSegment`, does not throw an exception if no projection falls on a segment. |
| `ReadOnlyPoint`, `Point` | Point's `Coordinate`. |
| `ReadOnlyText`, `Text` | Text's `Coordinate` (insertion point). |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line or polygon without vertices. |
