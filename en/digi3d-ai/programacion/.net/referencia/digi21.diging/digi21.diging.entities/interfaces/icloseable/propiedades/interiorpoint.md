# InteriorPoint
<!-- id: interiorpoint-2 -->
<!-- origen: f41527873a1d569bdc5106a5a9acb385a7542168 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a coordinate inside the area enclosed by the entity. Property of [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
Point3D InteriorPoint { get; }
```

## Property value

A [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) inside the enclosed area in the XY plane. Useful, for example, for placing a parcel label. Unlike `Center` (the center of the minimum and maximum coordinates), this point lies inside the enclosed area even for concave areas.

| Type | Calculation |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | If the center of the minimum and maximum coordinates is inside the line, returns that center. Otherwise, finds a point on a horizontal line that passes through no vertices. |
| `ReadOnlyPolygon`, `Polygon` | Finds the point considering the outer boundary and holes: the returned point is not inside any hole. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line not closed in X and Y (`Closed` is `false`) or has fewer than 2 vertices. |
