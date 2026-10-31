# Disjoint
<!-- id: disjoint-4 -->
<!-- origen: 6e320e7b72a26b679329d399ec3dbcd0a2e27486 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point and area are disjoint.

![Disjoint point and area](../../../../../../../../../images/puntoareanocoincidentes.png)

```csharp
public static bool Disjoint(ReadOnlyPoint point, ReadOnlyLine area)
public static bool Disjoint(ReadOnlyPoint point, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). In the installed assembly, this parameter is named `line` or `polygon`. |

## Return value

`true` if the point coincides with no area vertex (outer ring or holes) and is not inside the area. This is the opposite of `Coincident(point, area) || Within(point, area)`.

The method returns `true` for a point outside the area, a point inside a polygon's hole and a point on an area edge that does not coincide with any vertex.

With a `Point` created in memory, the method always returns `true`; see the note in [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `area` is `null`. |

## Example

See the [PointArea example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/#example).
