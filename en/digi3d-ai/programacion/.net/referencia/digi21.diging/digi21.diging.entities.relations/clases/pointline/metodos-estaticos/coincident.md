# Coincident
<!-- id: coincident-2 -->
<!-- origen: 06f5bb661279081553d878330768b7e9fd680a8b -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the point coincides with an intermediate line vertex.

![Point coincident with a line](../../../../../../../../../images/puntolineacoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint point, ReadOnlyLine line)
```

| Parameter | Description |
| :--- | :--- |
| `point` | Point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `line` | Line, of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |

## Return value

`true` if the point's coordinate coincides with a line vertex that is neither the first nor the last. If the point coincides with an endpoint, the method returns `false` and [CoincidentAndTerminate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) returns `true`. With a two-vertex line, the method always returns `false`.

With a `Point` created in memory, the method always returns `false`; see the note in [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `point` or `line` is `null`. |

## Example

See the [PointLine example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/#example).
