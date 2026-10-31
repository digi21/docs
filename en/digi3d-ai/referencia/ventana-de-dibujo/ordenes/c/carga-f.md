# LOAD\_F
<!-- id: carga-f -->
<!-- origen: c3143e2a3835e0cb02f598384f3cb8b206442062 -->

Display one or more reference drawing files alongside the current drawing file.

## Parameters

| File | Parameters |
| :--- | :--- |
| .bin file |Accuracy decimals<br>Global origin|
| Kork ASCII file | No parameters required |
| .DGN v8 file |Cell file<br>Entities to skip<br>Code criteria<br>Unknown codes|
| AutoCAD DXF file |Translation table<br>C:\Archivos de programa\Digi21.net\Digi3D2006\Tablas\BINDXF.TAB.XML|

## Notes

You can load .bin, .dgn, .dwg, .mdb, xyz, and other files. Available parameters depend on the selected file type.

Reference files are used in read-only mode. You can perform any read operation on them \(listing elements, graphical snapping, etc.\). To draw new entities or modify entities in a reference file, run [CHANGE\_FILES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md) to make that reference file the active drawing file.

## See also

- [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — available formats and the parameters each accepts.
- [Connect to a WMS server](/digi3d-ai/procedimientos/conectar-servidor-wms.md) — load a Web Map Service server's layers as a reference file.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Load reference file... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHANGE\_FILES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md)<br>[LEAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md)<br>[DRAWING\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-dibujo.md)<br>[IMPORTATION\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)<br>[RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md) |
| Internal name | {133C76FE-F098-4dbc-BFDF-71BD5200D71C} |
