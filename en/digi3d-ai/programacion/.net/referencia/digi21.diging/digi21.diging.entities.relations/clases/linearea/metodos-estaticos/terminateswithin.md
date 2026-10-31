# TerminatesWithin
<!-- id: terminateswithin -->
<!-- origen: 5bfddcdc5e1d46444b69941ba462f82221af7c30 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line enters the area from outside and ends inside it.

![Line ending inside an area](../../../../../../../../../images/lineaterminaenarea.png)

```csharp
public static bool TerminatesWithin(ReadOnlyLine line, ReadOnlyLine area)
public static bool TerminatesWithin(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

`true` if both conditions are met:

* At least one line vertex is outside the area. A vertex inside a polygon's hole is outside.
* The first or last line vertex is inside the area.

Vertices on the boundary count as neither inside nor outside. The method also returns `true` if both endpoints are inside the area and an intermediate vertex is outside.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |

## Example

See the [LineArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/#example).
