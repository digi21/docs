# CoincidentAndTerminate
<!-- id: coincidentandterminate -->
<!-- origen: 10aae628467bf9aa05ae95fd7fc9da3ea442688e -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point coincides with a line endpoint.

![Point coincident with a line endpoint](../../../../../../../../../images/puntolineacoincidentesextremo.png)

```csharp
public static bool CoincidentAndTerminate(ReadOnlyPoint point, ReadOnlyLine line)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `line` | Line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |

## Return value

`true` if the point's coordinate coincides with the first or last line vertex.

With a `Point` created in memory, the method always returns `false`; see the note in [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `line` is `null`. |

## Example

See the [PointLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/#example).
