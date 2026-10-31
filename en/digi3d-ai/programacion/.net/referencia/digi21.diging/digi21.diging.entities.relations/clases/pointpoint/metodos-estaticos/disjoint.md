# Disjoint
<!-- id: disjoint-6 -->
<!-- origen: 8b93f637b26fc447b10f0b36a8a8b08994546ef4 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the two points are disjoint.

![Two disjoint points](../../../../../../../../../images/puntopuntonocoincidentes.png)

```csharp
public static bool Disjoint(ReadOnlyPoint a, ReadOnlyPoint b)
```

| Parameter | Description |
| :--- | :--- |
| `a` | First point, of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `b` | Second point. |

## Return value

`true` if the two points have different X or Y coordinates. The result of `Disjoint(a, b)` is the opposite of [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/coincident.md)`(a, b)`.

If either point is a `Point` created in memory, the method always returns `true`; see the note in [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |

## Example

See the [PointPoint example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/#example).
