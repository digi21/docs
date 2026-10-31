# OuterRingAdjacent
<!-- id: outerringadjacent -->
<!-- origen: 4d7079b3d1b0150aafb69eec44a06d73d267721c -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas are adjacent.

![Area adjacent to another area](../../../../../../../../../images/areaadyacentearea.png)

```csharp
public static bool OuterRingAdjacent(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |

## Return value

The value returned by [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md) when each `ReadOnlyPolygon` is replaced by a closed line containing its outer ring's vertices. Polygon holes are ignored: an area adjacent only to a polygon's hole is not adjacent to that polygon.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |
