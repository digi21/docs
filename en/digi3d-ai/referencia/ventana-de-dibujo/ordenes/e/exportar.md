# EXPORT
<!-- id: exportar -->
<!-- origen: 554a054cbb34a7ad2a588a2af12b4f3875c0df11 -->

Export the current file to the following formats:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCAD\)
* Geomedia Datawarehose MDB \(requires a Geomedia license\)
* Kork ASCII
* XYZ coordinates
* Digi ASCII

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Destination file name. If the file name has no extension, the command appends `.bind` | Yes |

If you do not specify the file name, the command displays a dialog box to select the destination file, its format, and export parameters. This dialog box includes an option to export only each entity's first code. If the specified file exists and is read-only, the command displays an error and ends.

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

## Notes

The command excludes entities recorded with a code that is hidden \([OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)\) when the command is run.

The command exports undeleted, visible, nonvirtual entities within the area of interest. If the destination format does not support multiple codes per entity, the command exports one copy of the entity per code.

## See also

- [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — available formats and the parameters each accepts.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Export... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPORT\_SELECTED\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md)<br>[EXPORTA\_VIRTUAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md)<br>[IMPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md)<br>[IMPORTATION\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) |
| Internal name | {DC4164CD-347F-4f98-A060-7DDBC76699DF} |
