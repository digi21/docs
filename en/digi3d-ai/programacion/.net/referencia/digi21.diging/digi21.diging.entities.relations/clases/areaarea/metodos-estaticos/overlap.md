# Overlap
<!-- id: overlap -->
<!-- origen: 74eeaa33638bcaca386a014159b44ccb4d56fe03 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas overlap and returns a vertex of one area lying inside the other.

![Area overlapping another area](../../../../../../../../../images/areasolapaarea.png)

![Area overlapping another area](../../../../../../../../../images/areasolapaarea2.png)

```csharp
public static bool Overlap(ReadOnlyLine a, ReadOnlyLine b, out Point3D coordinate)
public static bool Overlap(ReadOnlyLine a, ReadOnlyPolygon b, out Point3D coordinate)
public static bool Overlap(ReadOnlyPolygon a, ReadOnlyLine b, out Point3D coordinate)
public static bool Overlap(ReadOnlyPolygon a, ReadOnlyPolygon b, out Point3D coordinate)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |
| `coordinate` | Output parameter of type [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md). If the method returns `true`, contains the first vertex of `a` inside `b` or, if no vertex of `a` is inside `b`, the first vertex of `b` inside `a`, including its Z coordinate. If the method returns `false`, contains (0, 0, 0). For example, this can be used to show the user where the overlap occurs. |

## Return value

`true` if the areas satisfy none of the other [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/) relations: one area has vertices inside the other and neither contains the other. For example, `a` has vertices inside and outside `b`, and `b` has a vertex inside `a`.

Because the method only analyzes vertices, two areas whose edges cross without any vertex lying inside the other do not overlap: [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/disjoint.md) returns `true` if they also have no common vertices.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |

## Example

See the [AreaArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#example).
