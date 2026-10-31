# DgnParameters
<!-- id: digi21.diging.io.dgn.dgnparameters -->
<!-- origen: d0217c015f30c5efc517c934ae6dca5ddb79acd6 -->

Namespace: `Digi21.DigiNG.IO.Dgn`  
Assembly: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Read and write parameters accepted by [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md) constructors. They correspond to the properties of Digi3D.AI's [DGNv8 files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) importer/exporter.

```csharp
public struct DgnParameters
```

`new DgnParameters()` leaves all properties at their .NET default values (`null`, `0` or the first enumeration value). The "Default value" column indicates the effect of that value.

## Properties

| Property | Description | Default value |
| :--- | :--- | :--- |
| `string TemplateFile` | `.dgn` file copied as a starting point when `path` does not exist. | `null`: no template. |
| `string CellFile` | Cell file (`.cel`) providing cell shapes when writing. If `null`, cell shapes are taken from Digi3D.AI's symbols folder. | `null`: symbols folder. |
| `DgnCodeCriteria CodeCriteria` | Criterion used to find each element's code in the code table. See [DgnCodeCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgncodecriteria.md). For a value not in `DgnCodeCriteria`, the `Dgn` constructor throws `ArgumentOutOfRangeException`. | `Level`. |
| `DgnBlockCriteria BlockCriteria` | Entity type to which each cell is converted when reading the file. See [DgnBlockCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnblockcriteria.md). | `Complex`. |
| `double SplineIncrement` | Distance, in drawing units, between vertices generated when converting splines to polylines on reading. A value below 1 is treated as 1. | `0`, treated as 1. |
| `string FormatForUnknownCodes` | Code name created for an element with no translation in the code table. Supports the substitutors `$(Level)`, `$(Color)`, `$(Style)`, `$(Thickness)` and `$(GraphicGroup)`, and their Spanish equivalents `$(Nivel)`, `$(Estilo)`, `$(Grosor)` and `$(GrupoGrafico)`. | `null` or empty: the level name (`$(Level)`). |

The `Dgn` constructor also sets these importer properties, which cannot be changed through `DgnParameters`:

| Importer property | Value |
| :--- | :--- |
| Transform the cell entity level | Yes |
| Import palette | Yes |
| Entity colors | DGN file colors |

The **Symbology resource files** property takes its value from the last DGN importer/exporter settings saved by Digi3D.AI for the user.

## Example

The [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md#example) example creates a `DgnParameters` and passes it to the constructor.
