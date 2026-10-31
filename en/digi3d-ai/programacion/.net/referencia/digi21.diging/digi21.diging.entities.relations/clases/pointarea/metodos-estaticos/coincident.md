# Coincident
<!-- id: coincident -->
<!-- origen: 654cc01592d6e0d86e4e12edced8175702d9e854 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point coincides with an area vertex.

![Coincident point and area](../../../../../../../../../images/puntoareacoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint point, ReadOnlyLine area)
public static bool Coincident(ReadOnlyPoint point, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). In the installed assembly, this parameter is named `line` or `polygon`. |

## Return value

`true` if the point's coordinate coincides with an area vertex. With a `ReadOnlyPolygon`, the vertex can belong to the outer ring or a hole. The method returns `false` if the point lies on an area edge without coinciding with a vertex.

With a `Point` created in memory, the method always returns `false`; see the note in [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `area` is `null`. |

## Example

See the [PointArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/#example).
