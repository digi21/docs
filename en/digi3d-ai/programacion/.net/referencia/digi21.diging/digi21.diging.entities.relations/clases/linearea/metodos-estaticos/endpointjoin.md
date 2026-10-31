# EndpointJoin
<!-- id: endpointjoin -->
<!-- origen: 3db6bd564b7615f1ef05b439b5367654abfce54d -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether a line endpoint joins the area at an area vertex.

![Line endpoint joins the area](../../../../../../../../../images/lineaareacoincidentes.png)

```csharp
public static bool EndpointJoin(ReadOnlyLine line, ReadOnlyLine area)
public static bool EndpointJoin(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

* `EndpointJoin(ReadOnlyLine, ReadOnlyLine)`: `true` if the first or last vertex of `line` coincides with a vertex of `area`.
* `EndpointJoin(ReadOnlyLine, ReadOnlyPolygon)`: `true` if the first or last vertex of `line` coincides with a vertex of the outer ring or a hole, and [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/across.md)`(line, area)` also returns `false`.

A line endpoint on an area edge without coinciding with a vertex does not count. The first overload does not analyze the rest of the line: the line can have vertices inside the area.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |

## Example

See the [LineArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/#example).
