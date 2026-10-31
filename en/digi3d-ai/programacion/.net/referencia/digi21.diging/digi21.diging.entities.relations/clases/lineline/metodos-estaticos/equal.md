# Equal
<!-- id: equal-2 -->
<!-- origen: 9b7fdaff6c8e188755ef3634db80fcbb0ee344c2 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines are equal.

![Line equal to another line](../../../../../../../../../images/linealineaiguales.png)

```csharp
public static bool Equal(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if the two lines have the same number of vertices and each vertex of `a` coincides with the vertex of `b` in the same position, traversing `b` in the same or opposite direction.

The method does not allow a different starting vertex: two closed lines with the same outline starting at different vertices are not equal. To compare closed outlines with any starting vertex, use [AreaArea.Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/equal.md). The Z coordinate, codes and attributes are not compared.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [LineLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/#example).
