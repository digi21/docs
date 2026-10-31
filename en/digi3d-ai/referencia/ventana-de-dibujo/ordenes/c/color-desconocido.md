# UNKNOWN\_COLOR
<!-- id: color-desconocido -->
<!-- origen: 44358de10071cf339dfff9329b165ba55d363ec6 -->

Set the drawing color for entities whose code is unknown.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Red component, or palette color index if it is the only parameter | Integer from 0 to 255 inclusive | Yes |
| 2 | Green component | Integer from 0 to 255 inclusive | Yes |
| 3 | Blue component | Integer from 0 to 255 inclusive | Yes |

## Notes

Without parameters, display [Select color](../../../cuadros-de-dialogo/seleccionar-color.md) with the active code table's palette. Selecting a palette color sets the unknown color to that entry's RGB value, not its index: later palette changes do not affect the color. Opacity (**A**) is hidden because the color is always opaque. With no code table loaded, show no palette. Click **OK** or press Enter to apply values entered in R, G, and B without clicking the color. The hexadecimal value box is read-only. One parameter is interpreted as a palette index (0–255); three are red, green, and blue components (0–255). With two parameters or an index outside 0–255, sound the error tone and leave the color unchanged.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Viewing parameters/Unknown color... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {B114FEAC-4ABD-46F8-B4B2-4E1D8DE0E29A} |
