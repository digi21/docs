# Adjacent
<!-- id: adjacent-2 -->
<!-- origen: a2b95ac059c980456dca2c01d1ebea5c8eeb1abe -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line is adjacent to the area: it follows part of the boundary without entering the area.

![Line adjacent to an area](../../../../../../../../../images/lineaadyacentearea.png)

```csharp
public static bool Adjacent(ReadOnlyLine line, ReadOnlyLine area)
public static bool Adjacent(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

`true` if both conditions are met:

* The line shares at least one edge with the area: two consecutive line vertices coincide with two consecutive area vertices. With a `ReadOnlyPolygon`, the edge can belong to the outer ring or a hole.
* No line vertex is inside the area. Vertices outside the area or on its boundary are allowed.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |

## Example

See the [LineArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/#example).
