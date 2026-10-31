# NearestVertex
<!-- id: nearestvertex -->
<!-- origen: ea438a508b102365ad59a3fc711b39de6b41a0bf -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Finds the entity's closest vertex to a coordinate. Method of [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/).

```csharp
double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `coordinate` | Reference coordinate. |
| `nearestVertex` | Returns the found vertex's X, Y and Z coordinates. |
| `vertex` | Returns the found vertex's index in `Points`. |

## Return value

XY plane distance between `coordinate` and `nearestVertex`.

| Type | Calculation |
| :--- | :--- |
| `ReadOnlyLine`, `Line`, `ReadOnlyPolygon`, `Polygon` | Iterates through all vertices and chooses the one closest to `coordinate` in the XY plane; if two vertices are equally distant from `coordinate`, chooses the lower index. For a polygon, only the outer boundary is analyzed. |
| `ReadOnlyPoint`, `Point`, `ReadOnlyText`, `Text` | `nearestVertex` is `Coordinate` and `vertex` is 0. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line or polygon without vertices. |

## Example

The [ISnapable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#example) calls this method with a line and a point.
