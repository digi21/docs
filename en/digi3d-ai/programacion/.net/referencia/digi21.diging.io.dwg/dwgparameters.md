# DwgParameters
<!-- id: digi21.diging.io.dwg.dwgparameters -->
<!-- origen: cf8760360936d3f0fdc840176f78b599603ac1de -->

Namespace: `Digi21.DigiNG.IO.Dwg`  
Assembly: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Read and write parameters accepted by [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) constructors. They correspond to the properties of Digi3D.AI's [AutoCAD DWG files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) importer/exporter.

```csharp
public struct DwgParameters
```

`new DwgParameters()` leaves all properties at their .NET default values (`null` or the first enumeration value). The "Default value" column indicates the effect of that value.

## Properties

| Property | Description | Default value |
| :--- | :--- | :--- |
| `DwgVersion Version` | AutoCAD version used to write the file when `Dispose` is called. See [DwgVersion](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgversion.md). | `Ac_12`: AutoCAD R11/R12. Always assign the version when writing the file. |
| `string TemplateFile` | `.dwg` file copied as a starting point when `path` does not exist. | `null`: no template. |
| `string CellFile` | Unused: the `Dwg` constructor does not read this property. | — |
| `DwgImportBlocksAs BlockCriteria` | Entity type to which each block reference is converted when reading the file. See [DwgImportBlocksAs](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgimportblocksas.md). | `Complex`. |

The `Dwg` constructor also sets these importer properties, which cannot be changed through `DwgParameters`:

| Importer property | Value |
| :--- | :--- |
| Import blocks | No |
| Import palette | Yes: when opening an existing file, the code table's palette is replaced by AutoCAD's standard 256-color palette. |
| Use drawing file colors | Yes: entities with their own color in the file retain it. |

## Example

```csharp
using Digi21.DigiNG.IO.Dwg;

var parámetros = new DwgParameters
{
    Version = DwgVersion.Ac_2010,
    BlockCriteria = DwgImportBlocksAs.Point
};

Console.WriteLine($"{parámetros.Version}, bloques como {parámetros.BlockCriteria}");
```

The [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md#example) example passes a `DwgParameters` to the constructor.
