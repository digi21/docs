# Across
<!-- id: across-2 -->
<!-- origen: f139ff257f450ca9414e9cbf17fcdf0a99d26d89 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two lines cross at a common vertex.

![Line crossing another line](../../../../../../../../../images/lineacruzalinea.png)

```csharp
public static bool Across(ReadOnlyLine a, ReadOnlyLine b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| `b` | Second line. |

## Return value

`true` if an intermediate vertex of `a` coincides with an intermediate vertex of `b` where the lines cross. At that vertex, the lines cross if both conditions are met:

* The vertices before and after the vertex of `b` lie on opposite sides of the edge of `a` leaving the common vertex.
* The vertices before and after the vertex of `a` lie on opposite sides of the edge of `b` leaving the common vertex.

If an intermediate vertex of `a` coincides with several intermediate vertices of `b`, only the first is analyzed. A crossing between edges without a common vertex is not detected, nor is a crossing at either line's endpoint.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [LineLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/#example).
