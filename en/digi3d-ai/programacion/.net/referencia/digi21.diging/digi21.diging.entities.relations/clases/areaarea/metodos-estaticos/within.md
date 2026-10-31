# Within
<!-- id: within -->
<!-- origen: c48c37101d2f7cf2a65089d23cc133dfe10b30c0 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the first area is inside the second and shares at least one vertex with it.

![Area inside another area](../../../../../../../../../images/areaincluyearea2.png)

![Area inside another area](../../../../../../../../../images/areaincluyearea3.png)

```csharp
public static bool Within(ReadOnlyLine a, ReadOnlyLine b)
public static bool Within(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Within(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Within(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | Area to test for containment in `b`: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Containing area. |

## Return value

`true` if all three conditions are met:

* No vertex of `a` is outside `b`. A vertex inside a hole of `b` is outside `b`.
* At least one vertex of `a` coincides with a vertex of `b`.
* No vertex of `b`, including holes, is inside `a`.

If no vertex of `a` is inside `b` (all are common or lie on edges of `b`), the method calculates an interior point of `a` and returns `true` if that point is inside `b`.

If `a` is inside `b` without common vertices, this method returns `false` and [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(a, b)` returns `true`. To cover both cases, combine `Within(a, b) || CompletelyWithin(a, b)`. The method is asymmetric: to find whether `b` is inside `a`, call `Within(b, a)`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |

## Example

See the [AreaArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#example).
