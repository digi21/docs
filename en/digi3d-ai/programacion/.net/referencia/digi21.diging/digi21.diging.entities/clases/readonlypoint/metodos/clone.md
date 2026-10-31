# Clone
<!-- id: clone-4 -->
<!-- origen: 7f19843b9bc29247978dfe7e0ebcd83ff9deb5f7 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a copy of the [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) as a read/write [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

```csharp
public new Point Clone()
```

## Return value

A new `Point` with `Owner` set to `null` (`ReadOnly` is `false`). The returned `Point` has the original point's coordinate, rotation, codes with their attributes, color, line weight, fill color, entity attributes, deleted flag (`Deleted`), and minimum and maximum coordinates. The returned `Point`'s `CreationTime` is the date and time the copy was created.

This method hides [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md). Both calls return a `Point` with the same data and differ in `Code.Attributes`: in this method's copy, each code's attribute dictionary is read-only; `Entity.Clone` replaces it with a modifiable `Dictionary<string, object>` containing the same values.

To store a point read from a file in another drawing file, add the copy: `IDrawingFile.Add` throws `InvalidOperationException` for an entity belonging to another file.
