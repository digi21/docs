# INS\_AA
<!-- id: ins-aa -->
<!-- origen: ac620d1cb21b73cc399cea6333e56195d371815e -->

Insert a drawing file into the working file, rotated by the active angle.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to insert. If omitted, the command displays a file selection dialog box | Yes |

## Notes

This works like [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md), but rotates the block about the insertion point by the value of [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), in degrees.

The file is inserted with a scale factor equal to the active scale \([ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md)\).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Blocks/Insert a block with an active angle... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Internal name | {D342155B-D2EF-43c1-B74E-D88DF9922139} |
