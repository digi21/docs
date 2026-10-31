# ClosedXYZ
<!-- id: closedxyz -->
<!-- origen: 5eb6841d8e7316b4c5bd593f31ad9044fbd7601e -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the entity is closed in X, Y and Z. Property of [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
bool ClosedXYZ { get; }
```

## Property value

| Type | Value |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | `true` if the first vertex's X, Y and Z equal the last vertex's, using Digi3D.AI's real number comparison tolerance. |
| `ReadOnlyPolygon`, `Polygon` | Always `true`, even if the first and last vertices have different Z coordinates. |

A line with `ClosedXYZ` set to `true` also has `Closed` set to `true`. The reverse does not hold: a line whose first and last vertices differ only in Z has `Closed` set to `true` and `ClosedXYZ` set to `false`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line with fewer than 2 vertices. |
