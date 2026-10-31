# EndpointJoinExcludingEndpoints
<!-- id: endpointjoinexcludingendpoints -->
<!-- origen: 03bd0e4b12ebac86ea5cb563005f87429c7f2044 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether an endpoint of the first line joins the second line at a vertex that is not an endpoint of the second.

![Line endpoint joining an intermediate vertex of another line](../../../../../../../../../images/extremolineaunelineaexcluyendoextremos.png)

```csharp
public static bool EndpointJoinExcludingEndpoints(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | Line whose endpoints are analyzed, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Line whose intermediate vertices are analyzed. |

## Return value

`true` if the first or last vertex of `a` coincides with a vertex of `b` that is neither the first nor the last vertex of `b`. An endpoint of `a` lying on an edge of `b` without coinciding with a vertex does not count.

The method is asymmetric: to analyze the endpoints of `b`, call `EndpointJoinExcludingEndpoints(b, a)`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [LineLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/#example).
