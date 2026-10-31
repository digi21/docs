# BLOCK
<!-- id: bloque -->
<!-- origen: 871081635ed4dc307c3393030038dc4be3459b26 -->

Store an entity or a set of entities in a new file for later insertion into any drawing.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | File to create. If you specify the file path, the command skips the file selection dialog box and uses the file format's last saved settings with the **1. Cut** inclusion condition. A format selection dialog box may appear if multiple formats use the file extension, or a format parameters dialog box may appear if the format configuration requires you to specify parameters. The parameters dialog box does not appear for BIN or BIND: a BIN file is created with centimeter precision and global origin (0, 0, 0), and a BIND file is created without a database | File path | Yes |

## Notes

The window used to generate the block is an existing line in the drawing. To create the block:

1. Specify the name and format of the file to create in the dialog box. In its **Block** category, choose the **Inclusion condition** (**0. Interior**, **1. Cut**, or **2. Overlap**; the default is **1. Cut**). Enable **Invert selection** to save what lies outside the window instead of what lies inside.
2. Digitize the origin point. Entity coordinates are saved relative to this point.
3. Select the line that serves as the window.

The command searches all loaded drawing files for visible, undeleted entities within the area of interest and saves those meeting the inclusion condition to the block file. With **1. Cut**, it saves the portions of lines inside the window. The window line is not saved. Drawing entities are not modified.

If you cancel the dialog box, the command ends without creating the file.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Blocks/Create a block... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BLOCK\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque-2p.md)<br>[INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md) |
| Internal name | {6631BD75-5A59-423f-9196-B432B6DBF6D5} |
