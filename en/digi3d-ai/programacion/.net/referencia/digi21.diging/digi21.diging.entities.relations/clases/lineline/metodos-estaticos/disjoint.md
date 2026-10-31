# Disjoint
<!-- id: disjoint-3 -->
<!-- origen: d84b667e885c039f532567e893296ad54767adc5 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines are disjoint.

![Line disjoint from another line](../../../../../../../../../images/lineanocoincidentelinea.png)

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if the two lines' bounding boxes in the XY plane do not touch or if no vertex of `a` coincides with a vertex of `b`. Endpoints count as vertices.

Because only vertices are compared, two lines whose edges cross without a common vertex are disjoint.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [LineLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/#example).
