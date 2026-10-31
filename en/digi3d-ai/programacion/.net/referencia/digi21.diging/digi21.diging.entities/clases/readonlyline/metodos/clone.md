# Clone
<!-- id: clone-3 -->
<!-- origen: 19058c52939614e0ab8fe71de217dbf1cd062dbc -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a read/write copy of the line. The copy does not belong to any drawing file.

```csharp
public new Line Clone()
```

## Return value

A [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) with this line's vertices, codes, `Color`, `Weight`, `FillColor` and `Deleted`. Data copied and not copied are described in [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Example

```csharp
// línea is a ReadOnlyLine read from a file.
var copia = línea.Clone();
copia.ChangeDirection();
```
