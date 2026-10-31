# EndpointJoinEndpoint
<!-- id: endpointjoinendpoint -->
<!-- origen: 9970f13235f75cb4231dd9b749ea72ed31c2cfb9 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines join at an endpoint.

![Lines joined at their endpoints](../../../../../../../../../images/lineauneextremolinea.png)

```csharp
public static bool EndpointJoinEndpoint(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if both conditions are met:

* The first or last vertex of `a` coincides with the first or last vertex of `b`.
* The two lines are not equal according to [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/equal.md).

The remaining vertices are not analyzed: the lines may also share edges or intermediate vertices.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [LineLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/#example).
