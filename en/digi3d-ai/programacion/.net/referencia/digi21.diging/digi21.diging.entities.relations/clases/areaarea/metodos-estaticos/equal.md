# Equal
<!-- id: equal -->
<!-- origen: 51ae9c3543b5141bd92d399d786c1ecd4d7b145c -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas are equal.

![Area equal to another area](../../../../../../../../../images/areaidenticaarea.png)

```csharp
public static bool Equal(ReadOnlyLine a, ReadOnlyLine b)
public static bool Equal(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Equal(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Equal(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |

## Return value

`true` if either condition is met:

* The outer rings have the same vertices in the same circular order, starting at any vertex and in either direction, and each hole of `a` is equal to a hole of `b` under the same rule. Both areas have the same number of holes. The closing vertex and consecutive duplicate vertices are removed before comparison.
* The areas have common vertices and neither has a vertex inside or outside the other: vertices that are not common lie on the other area's edges. Thus an area is equal to another with the same outline and intermediate vertices on its edges.

A closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) can be equal to a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) without holes. The Z coordinate, codes and attributes are not compared.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |
