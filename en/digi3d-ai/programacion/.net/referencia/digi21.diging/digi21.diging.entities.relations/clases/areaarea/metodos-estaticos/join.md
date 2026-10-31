# Join
<!-- id: join -->
<!-- origen: 657d24a560bffa9c72f98e47348072890b503066 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas have a joining point: they touch at common vertices without sharing an edge.

![The two areas share a point](../../../../../../../../../images/areaunearea.png)

![The two areas share a point](../../../../../../../../../images/areaunearea2.png)

```csharp
public static bool Join(ReadOnlyLine a, ReadOnlyLine b)
public static bool Join(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Join(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Join(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |

## Return value

`true` if all three conditions are met:

* No vertex of `a` is inside `b` and no vertex of `b` is inside `a`.
* The two areas have at least one common vertex.
* No edge of a ring of `a` is also an edge of a ring of `b`. If they share an edge, [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md) returns `true`.

If all vertices of one area are common or lie on the other area's edges, the result depends on an interior point of that area: if the point is inside the other area, the method returns `false` and [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md) returns `true`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |
