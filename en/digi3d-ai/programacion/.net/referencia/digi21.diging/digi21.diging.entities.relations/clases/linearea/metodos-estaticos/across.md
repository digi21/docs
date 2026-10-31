# Across
<!-- id: across -->
<!-- origen: dc97cab792645fcf9bfbf3922a7458c6810f32f3 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line crosses the area: it enters at one boundary point and leaves at another, passing through the interior.

![Line crossing an area](../../../../../../../../../images/lineacruzaarea.png)

![Line crossing an area](../../../../../../../../../images/lineacruzaarea2.png)

```csharp
public static bool Across(ReadOnlyLine line, ReadOnlyLine area)
public static bool Across(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

The method traverses the vertices of `line` and selects those on the area's boundary (on a vertex or edge). For each pair of these vertices encountered consecutively, with indices `i` and `j` (`i < j`), it tests a point on the line:

* If `j = i + 1`, the midpoint of the line edge between the two vertices.
* Otherwise, vertex `j - 1`.

It returns `true` as soon as one of these points is inside the area. For a `ReadOnlyPolygon`, the boundary includes holes and a point inside a hole is not inside the area.

A line crossing the boundary without a vertex on it is not detected. Nor is a line with only one vertex on the boundary.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |

## Example

See the [LineArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/#example).
