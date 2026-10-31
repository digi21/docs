# INSR
<!-- id: insr -->
<!-- origen: 99b6d0860ae72257dcd59a480896074f9fecd73f -->

Insert a block stored in a drawing file at a position in the current working file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to insert. If omitted, the command displays a file selection dialog box | Yes |

## Notes

The command prompts for two points: the insertion point and an orientation point. The block is rotated to the direction of the line from the insertion point to the orientation point.

The file is inserted with a scale factor equal to the active scale \( [ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md)\).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Blocks/Insert a block with two points... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md) |
| Internal name | {71B23AF4-5836-4c88-BAFE-56351F1DBB92} |
