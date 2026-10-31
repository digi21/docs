# ChangeDirection
<!-- id: changedirection -->
<!-- origen: 0a04c66e55a252042649625eac201cd8f8a74579 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Reverses the entity's direction: the last vertex becomes the first. Method of [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/).

```csharp
void ChangeDirection()
```

In [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), the method reverses the native entity's vertex order. Vertex coordinates do not change.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The line is read-only (`ReadOnly` is `true`). |

## Example

The [IDirectionable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/#example) reverses a line.
