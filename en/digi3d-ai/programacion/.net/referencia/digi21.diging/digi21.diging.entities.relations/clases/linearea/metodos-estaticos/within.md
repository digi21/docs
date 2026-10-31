# Within
<!-- id: within-2 -->
<!-- origen: 9fd3116371da0efee7b1b9891a9a36dd024d1961 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line is inside the area.

![Line inside an area](../../../../../../../../../images/lineadentroarea.png)

```csharp
public static bool Within(ReadOnlyLine line, ReadOnlyLine area)
public static bool Within(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

`true` if all line vertices are inside the area. A vertex on the boundary or inside a polygon's hole is not considered inside the area, so the method returns `false` if any line vertex touches the boundary.

Because only vertices are analyzed, the method returns `true` even if a line edge leaves the area between two interior vertices, for example by crossing an indentation in the outline or a hole.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |

## Example

See the [LineArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/#example).
