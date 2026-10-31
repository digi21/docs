# Clone
<!-- id: clone-2 -->
<!-- origen: 5a464e484cfac7d1e0f387fcaf345a934707b210 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a read/write copy of the complex. The copy does not belong to any drawing file.

```csharp
public new Complex Clone()
```

## Return value

A [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/) with a copy of each contained entity, and this complex's codes, `Color`, `Weight`, `FillColor` and `Deleted`. Data copied and not copied are described in [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md).

## Example

```csharp
// complejo is a ReadOnlyComplex read from a file.
var copia = complejo.Clone();
if (copia.Entities.Count > 0)
    copia.Entities.RemoveAt(0);
```
