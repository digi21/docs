# EXPORTA\_VIRTUAL
<!-- id: exportar-virtuales -->
<!-- origen: a0a2f87615d71420334634dc0f7a6a435ca09e8b -->

Export only virtual entities to a new file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Destination file name. If the file name has no extension, the command appends `.bind` | Yes |

If you do not specify the file name, the command displays a dialog box to select the destination file, its format, and export parameters. The command works like [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md), but only exports virtual entities.

### Export parameters by format

Export parameters depend on the destination file format.

| File | Parameter | Description |
| :--- | :--- | :--- |
| BIN |Accuracy decimals<br>Global origin|  |
| DGN v8 |Cell file<br>Entities to skip<br>Code criteria<br>Unknown codes|Cell file associated with the DGN file<br>Load a large DGN v8 file without consuming memory<br>Criteria for selecting the Digi code used to represent entities (Level, Color, Style, Thickness, Cell, or Graphic group only)<br>Code used to generate unknown entities. If no code is specified, the program uses the standard unknown code (you cannot select it)|
| AutoCAD DWG or DXF | Version | AutoCAD version used to read the resulting file (AutoCAD 11/12, 13, 14, 200, 2004, or AutoCAD 2007) |
| Kork ASCII | No parameters |  |
| Geomedia Datawarehose MDB | Text height | A Geomedia license is required |
| XYZ coordinates | Decimals | Number of decimal places for coordinates |
| Digi ASCII | Decimals | Number of decimal places for coordinates |

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Export virtual entities... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[EXPORT\_SELECTED\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md) |
| Internal name | {5DC58BC9-2FFA-4D99-9734-C6DDF9996460} |
