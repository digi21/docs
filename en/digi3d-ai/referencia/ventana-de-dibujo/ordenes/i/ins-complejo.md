# INS\_COMPLEX
<!-- id: ins-complejo -->
<!-- origen: adb64b7f95286dbe0cb5b101f42f42c609be9074 -->

Insert the contents of a drawing file as a single point-based complex element.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to insert. If omitted, the command displays a file selection dialog box | Yes |

## Notes

* The command groups all undeleted entities in the file into a point-based complex element and prompts for the insertion point.
* The complex element is rotated by the value of [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), in degrees. The active scale is not applied.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Internal name | {83C10011-EDBD-4FB2-B96D-6A3D4AC0D530} |
