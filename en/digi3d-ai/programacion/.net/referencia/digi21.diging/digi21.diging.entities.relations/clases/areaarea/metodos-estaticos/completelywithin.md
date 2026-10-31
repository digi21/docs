# CompletelyWithin
<!-- id: completelywithin -->
<!-- origen: b0a1cc9f45952aefc8027b96e5590cd82848ed6d -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the first area is completely inside the second, without common vertices.

![Area completely inside another area](../../../../../../../../../images/areaincluyearea.png)

```csharp
public static bool CompletelyWithin(ReadOnlyLine a, ReadOnlyLine b)
public static bool CompletelyWithin(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool CompletelyWithin(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool CompletelyWithin(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | Area to test for containment in `b`: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Containing area. |

## Return value

`true` if all four conditions are met:

* No vertex of `a` is outside `b`. A vertex inside a hole of `b` is outside `b`.
* At least one vertex of `a` is inside `b`. Vertices of `a` lying on an edge of `b` are ignored.
* No vertex of `a` coincides with a vertex of `b`.
* No vertex of `b`, including holes, is inside `a`.

If `a` is inside `b` with any common vertex, this method returns `false` and [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md)`(a, b)` returns `true`. The method is asymmetric: to find whether `b` is completely inside `a`, call `CompletelyWithin(b, a)`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |

## Example

See the [AreaArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#example).
