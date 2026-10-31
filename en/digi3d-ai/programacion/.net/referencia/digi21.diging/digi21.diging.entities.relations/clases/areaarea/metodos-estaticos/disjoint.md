# Disjoint
<!-- id: disjoint -->
<!-- origen: 2f0073c60fd644072ce6743353b5f16049a9bae1 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether two areas are disjoint.

![Area disjoint from another area](../../../../../../../../../images/areadisjuntaarea.png)

```csharp
public static bool Disjoint(ReadOnlyLine a, ReadOnlyLine b)
public static bool Disjoint(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Disjoint(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Second area. |

## Return value

`true` if the areas are not equal and either condition is met:

* The two areas' bounding boxes in the XY plane do not touch.
* The areas have no common vertices and neither has a vertex inside the other.

A vertex inside a hole of the other area counts as outside, so an area inside a polygon's hole is disjoint from that polygon if it shares no vertices with the hole.

Because the method only analyzes vertices, two areas crossing without any common vertices or vertices inside the other are also disjoint.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` | An area has an unclosed ring, a ring with zero area or a spike. See [AreaArea exceptions](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#exceptions). |

## Example

See the [AreaArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#example).
