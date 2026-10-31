# Disjoint
<!-- id: disjoint-5 -->
<!-- origen: d4a1e0829a72a44edc261e737b03381c68ef05bb -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point and line are disjoint.

![Disjoint point and line](../../../../../../../../../images/puntolineanocoincidentes.png)

```csharp
public static bool Disjoint(ReadOnlyPoint point, ReadOnlyLine line)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `line` | Line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |

## Return value

`true` if the point's coordinate coincides with no line vertex, including endpoints. The method returns `true` if the point lies on a line edge without coinciding with any vertex.

With a `Point` created in memory, the method always returns `true`; see the note in [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `line` is `null`. |

## Example

See the [PointLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/#example).
