# DgnBlockCriteria
<!-- id: digi21.diging.io.dgn.dgnblockcriteria -->
<!-- origen: 3cad74bab03004339678e7be8c5fedf51b9f42af -->

Namespace: `Digi21.DigiNG.IO.Dgn`  
Assembly: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Entity type to which each MicroStation cell is converted when reading a DGN file. This is the type of the `BlockCriteria` property of [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md) and corresponds to the **Import cells as** property in the [DGNv8 files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) importer/exporter.

```csharp
public enum DgnBlockCriteria
```

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Complex` | 0 | Each cell is read as a complex (`ReadOnlyComplex`) containing the cell's entities. `Complex` is the BlockCriteria property value when creating `new DgnParameters()`. |
| `Point` | 1 | Each cell is read as a point (`ReadOnlyPoint`). |

Both values apply to cells and shared cells. They do not apply to the orphan cells MicroStation uses to group shapes: those cells are read as polygons or complexes with either value.

## Example

The [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md#example) example assigns `DgnBlockCriteria.Point`.
