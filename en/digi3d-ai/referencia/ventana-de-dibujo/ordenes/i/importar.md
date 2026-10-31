# IMPORT
<!-- id: importar -->
<!-- origen: 38d815e1a9cc7751fab59967019f5cf2d1bfac64 -->

Import files of the following types:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCad\)
* Geomedia Datawarehouse .MDB \(requires a Geomedia license\)
* Kork ASCII
* XYZ coordinates
* Digi ASCII

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to import. If omitted, the command displays a file selection dialog box that allows multiple files to be selected | Yes |

Import parameters depend on the type of file to import.

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

The **Default** option is available for all file types. If you enable it, DigiNG saves the importer/exporter parameters. After saving the parameters, you can run _IMPORT_ with only the file path and name on the command line, for example:

`IMPORT=C:\Brochales\case1.bin`

## See also

- [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — available formats and the parameters each accepts.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Import... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[IMPORT\_JOINING\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar-uniendo-poligonos.md)<br>[IMPORTATION\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) |
| Internal name | {6DCCD1F4-17F1-4335-AFF4-86FA66BF5EB8} |
