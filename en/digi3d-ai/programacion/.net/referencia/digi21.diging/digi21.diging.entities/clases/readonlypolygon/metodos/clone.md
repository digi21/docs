# Clone
<!-- id: clone-5 -->
<!-- origen: 240a7c6a3358d68b88fef058c87d67342472f1dc -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a read/write copy of the polygon. The copy does not belong to any drawing file.

```csharp
public new Polygon Clone()
```

## Return value

A [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) with this polygon's outer boundary, a copy of each hole, codes, `Color`, `Weight`, `FillColor` and `Deleted`. Data copied and not copied are described in [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Example

```csharp
// polígono is a ReadOnlyPolygon read from a file.
var copia = polígono.Clone();
copia.Holes.Clear();
```
