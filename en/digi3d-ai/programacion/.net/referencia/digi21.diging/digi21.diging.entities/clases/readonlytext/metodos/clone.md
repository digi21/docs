# Clone
<!-- id: clone-6 -->
<!-- origen: 5e02d74bb12d65d49e2f153ca87ff92a48c790a2 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a copy of the [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) as a read/write [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new Text Clone()
```

## Return value

A new `Text` with `Owner` set to `null` (`ReadOnly` is `false`). The returned `Text` has the original text's string, insertion coordinate, height, rotation, orientation in space (`Orientation`), justification, codes with their attributes, color, line weight, fill color, entity attributes, deleted flag (`Deleted`), and minimum and maximum coordinates. The returned `Text`'s `CreationTime` is the date and time the copy was created.

This method hides [Entity.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/metodos/clone.md). Both calls return a `Text` with the same data and differ in `Code.Attributes`: in this method's copy, each code's attribute dictionary is read-only; `Entity.Clone` replaces it with a modifiable `Dictionary<string, object>` containing the same values.

To store text read from a file in another drawing file, add the copy: `IDrawingFile.Add` throws `InvalidOperationException` for an entity belonging to another file.
