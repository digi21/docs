# BACKGROUND_COLOR
<!-- id: color-fondo -->
<!-- origen: 6af023d3c78fb522a7377b9b03ff5a76877bc069 -->

Change the drawing window background color.

## Parameters

Run this command with one parameter, three parameters, or no parameters.

### With one parameter

| Parameter number | Description | Accepted values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Color index in the active code table color palette | 0–255 | Yes |

### With three parameters

| Parameter number | Description | Accepted values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Red | Number from 0 to 255 specifying the amount of red | No |
| 2 | Green | Number from 0 to 255 specifying the amount of green | No |
| 3 | Blue | Number from 0 to 255 specifying the amount of blue | No |

### Without parameters

Without parameters, BACKGROUND_COLOR displays [Select color](../../../cuadros-de-dialogo/seleccionar-color.md) with the active code table palette. Choosing a palette color assigns that entry's red, green, and blue (RGB) components to the background instead of its color index: later palette changes do not affect the background. The dialog box does not show opacity (**A**), because the background is always opaque. Without a loaded code table, the dialog box has no palette. Click **OK** or press Enter to apply the values typed in the R, G, and B boxes without clicking the color. The hexadecimal value box is read-only.

## Notes

Negative values are converted to absolute values, and values greater than 255 are limited to 255. With two parameters or more than three, the command plays an error sound and does not change the color.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/COLOR_FONDO.mp4" type="video/mp4"></video>

## Command characteristics

| Variable type                                 | [Numeric](../../../ordenes/variables/variables-numericas.md)                |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repeats automatically                           | No                                                                           |
| Menu option           | _This command has no associated menu option_                        |
| Toolbar | _This command has no associated toolbar button_ |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                   |
| Implementation | Native |
| Related variables                           | No related variables                                              |
| Internal name | {CC84B0E0-EFB8-48bc-97A2-DEF9AB885021} |
