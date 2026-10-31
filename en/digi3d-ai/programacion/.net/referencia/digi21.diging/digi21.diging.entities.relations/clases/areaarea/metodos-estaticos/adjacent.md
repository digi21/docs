# Adjacent
<!-- id: adjacent -->
<!-- origen: 54382b2eb67f5205ed63c6a4ff464b52ab203458 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas are adjacent: they share at least one edge and neither has a vertex inside the other.

![Area adjacent to another area](../../../../../../../../../images/areaadyacentearea.png)

```csharp
public static bool Adjacent(ReadOnlyLine a, ReadOnlyLine b)
public static bool Adjacent(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |

## Return value

`true` if all three conditions are met:

* No vertex of `a` is inside `b` and no vertex of `b` is inside `a`.
* The two areas have common vertices.
* Two consecutive vertices of a ring of `a` are also consecutive vertices of a ring of `b` (a common edge). Hole rings also count.

If the two areas are equal, or one is inside the other, the method returns `false`. See [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/) for the full classification. If the areas have common vertices but no common edge, [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md) returns `true`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |

## Example

See the [AreaArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#example).
