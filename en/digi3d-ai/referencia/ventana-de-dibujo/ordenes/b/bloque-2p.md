# BLOCK\_2P
<!-- id: bloque-2p -->
<!-- origen: f25446df88bc2a14761ddca16d940b07c38b66c1 -->

Store an entity or a set of entities in a new file for later insertion into any drawing.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | File to create. If you specify the file path, the command skips the file selection dialog box and uses the file format's last saved settings with the **1. Cut** inclusion condition. A format selection dialog box may appear if multiple formats use the file extension, or a format parameters dialog box may appear if the format configuration requires you to specify parameters | File path | Yes |

## Notes

This is similar to [BLOCK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md), except that _BLOCK\_2P_ uses two points to rotate the block being saved. The dialog box has the same options, including **Invert selection**.

After you accept the save dialog box, the command prompts for the origin point and then the alignment point. Entity coordinates are saved relative to the origin point and rotated about the Z axis so that the direction from the origin point to the alignment point lies along the block's X axis. After specifying both points, select the line that serves as the window.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Blocks/Create a block (2 points)... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BLOCK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md)<br>[INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md) |
| Internal name | {A1CFEC51-C5BF-4d34-9913-09290DAFB0EC} |
