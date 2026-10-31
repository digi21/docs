# Within
<!-- id: within-3 -->
<!-- origen: 0573746c06116026d89dabdb37000d5385b1d3bc -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point is inside the area.

![Point inside an area](../../../../../../../../../images/puntointeriorarea.png)

```csharp
public static bool Within(ReadOnlyPoint point, ReadOnlyLine area)
public static bool Within(ReadOnlyPoint point, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). In the installed assembly, this parameter is named `line` or `polygon`. |

## Return value

`true` if the point's coordinate is inside the area. Returns `false` if the point is on the boundary (a vertex or edge of the outer ring or a hole), inside a hole or outside the area. Always returns `false` for an unclosed `ReadOnlyLine`.

With a `Point` created in memory, the method always returns `false`; see the note in [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `area` is `null`. |

## Example

See the [PointArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/#example).
