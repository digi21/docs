# DwgImportBlocksAs
<!-- id: digi21.diging.io.dwg.dwgimportblocksas -->
<!-- origen: 89560162eb4b9664fcea7fa92c4bd4e3738872b1 -->

Namespace: `Digi21.DigiNG.IO.Dwg`  
Assembly: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Entity type to which each AutoCAD block reference is converted when reading a DWG file. This is the type of the `BlockCriteria` property of [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) and corresponds to the **Import blocks as** property in the [AutoCAD DWG files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) importer/exporter.

```csharp
public enum DwgImportBlocksAs
```

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Complex` | 0 | Each block reference is read as a complex (`ReadOnlyComplex`) containing the block's entities. Tables and multiple references (MINSERT) are not read as complexes. `Complex` is the BlockCriteria property value when creating `new DwgParameters()`. |
| `Point` | 1 | Each block reference is read as a point (`ReadOnlyPoint`) at the reference's insertion point. |

## Example

The [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md#example) example assigns `DwgImportBlocksAs.Point`.
