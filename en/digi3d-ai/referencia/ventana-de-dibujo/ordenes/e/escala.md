# SCALE
<!-- id: escala -->
<!-- origen: ff807c497afbe7b86fd2d53e6c635b7ad751ff6b -->

Display the current display scale of the drawing file.

## Parameters

Does not accept parameters.

## Notes

The scale, for example `1:1000`, is displayed in a balloon at the bottom left of the DigiNG main window.

The command divides the ground distance across the screen width by the physical monitor width, which defaults to 30.5 cm. For example, if the screen width covers 305 m of ground, the scale is 1:1000.

The display scale determines which codes are drawn: a code with a nonzero **Representation scale** in the code table is not drawn when the display scale is smaller than that field value; for example, at 1:10000 if **Representation scale** is 5000 (1:5000).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {7B0EC0F3-79D9-45dc-A0DB-233C63087D22} |
