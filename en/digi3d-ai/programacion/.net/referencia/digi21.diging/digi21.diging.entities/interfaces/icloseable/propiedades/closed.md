# Closed
<!-- id: closed -->
<!-- origen: 98118d9faea13a6d744927753765cf8791d19c47 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the entity is closed in the XY plane. Property of [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/).

```csharp
bool Closed { get; }
```

## Property value

| Type | Value |
| :--- | :--- |
| `ReadOnlyLine`, `Line` | `true` if the first vertex's X and Y equal the last vertex's, using Digi3D.AI's real number comparison tolerance. Z is not compared. |
| `ReadOnlyPolygon`, `Polygon` | Always `true`. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line with fewer than 2 vertices. |
