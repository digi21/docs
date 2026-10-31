# IMPORT\_JOINING\_POLYGONS
<!-- id: importar-uniendo-poligonos -->
<!-- origen: 7c65adc8e8996fd40ca25b1861648b791808c7a7 -->

Import one or more files into the drawing file and merge imported polygons that adjoin polygons in the drawing file and have the same codes and database attributes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to import. If omitted, the command displays a file selection dialog box that allows multiple files to be selected | Yes |

## Notes

* Imported entities that are not polygons are added to the drawing file unchanged.
* For each imported polygon, the command groups imported polygons and polygons in the drawing file with the same codes and attributes. It builds a topology from each group and replaces the group's polygons with the resulting enclosures, including their holes.
* If you select files in the dialog box, the command uses the import parameters chosen there. If you specify the file as a parameter, it uses the import parameters saved for that file format.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Import joining polygons... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [IMPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md) |
| Internal name | {C0011422-669C-442A-B3D8-0BADCAEFD939} |
