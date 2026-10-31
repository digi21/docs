# INS\_3D
<!-- id: ins-3d -->
<!-- origen: 3f544b6e1cf72c1337869cc53219d9d97631aa02 -->

Insert a 3D block using three points: the first sets its position, the second its orientation, and the third its rotation.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | File path (3D block). If omitted, the command displays a file selection dialog box | Yes |

## Notes

* The first point is the insertion point: the block's origin \(0, 0, 0\) is placed there.
* The second point orients the block: the block's negative Z axis is aligned with the direction from the first point to the second.
* The third point determines the block's rotation about its negative Z axis.
* The block is inserted without applying the active scale.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Internal name | {B8590A12-158B-4F7B-BD50-28DAED949ECF} |
