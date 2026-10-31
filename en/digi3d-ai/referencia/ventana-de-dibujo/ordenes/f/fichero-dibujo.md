# DRAWING\_FILE
<!-- id: fichero-dibujo -->
<!-- origen: 6a56a5acff7707a25f18cec5d26b3ae160badd2b -->

Request the name of a drawing file, load it, and use it to replace the active drawing file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Drawing file path and name | Yes |

If the parameter is omitted, the command displays a file selection dialog box.

## Notes

The specified file replaces the active drawing file. If it was already loaded as a reference file, it becomes the active drawing file. Otherwise, the command opens it. In both cases, the previously active file is unloaded.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHANGE\_FILES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambia-ficheros.md)<br>[LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md) |
| Internal name | {66525905-CDFE-468e-AD45-78C81CA6F861} |
