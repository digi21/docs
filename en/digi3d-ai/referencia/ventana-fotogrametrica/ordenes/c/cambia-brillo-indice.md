# CH\_POINTER\_BRIGHTNESS
<!-- id: cambia-brillo-indice -->
<!-- origen: a24509a01a0b5907dd22c28742373c5cda446035 -->

Changes the brightness of both cursors together or each cursor separately.

## Parameters

| Parameter | Description |
| :--- | :--- |
| -4 | Restores the left cursor's original brightness |
| -3 | Decreases both cursors' brightness |
| -2 | Decreases the left cursor's brightness |
| -1 | Increases the left cursor's brightness |
| 0 | Restores both cursors' original brightness |
| 1 | Increases the right cursor's brightness |
| 2 | Decreases the right cursor's brightness |
| 3 | Increases both cursors' brightness |
| 4 | Restores the right cursor's original brightness |

### Example:

`CH_POINTER_BRIGHTNESS=0`

## Notes

CH_POINTER_BRIGHTNESS increases or decreases cursor brightness in steps of 5, within the inclusive range 0–255.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Cursor/Brightness/Left/Right/Lighten<br>Photogrammetric window/Cursor/Brightness/Left/Right/Darken<br>Photogrammetric window/Cursor/Brightness/Left/Right/Reset original brightness<br>Photogrammetric window/Cursor/Brightness/Left/Lighten<br>Photogrammetric window/Cursor/Brightness/Left/Darken<br>Photogrammetric window/Cursor/Brightness/Left/Reset original brightness<br>Photogrammetric window/Cursor/Brightness/Right/Lighten<br>Photogrammetric window/Cursor/Brightness/Right/Darken<br>Photogrammetric window/Cursor/Brightness/Right/Reset original brightness |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [POINTER\_COLOUR](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/c/color-indice.md) |
| Internal name | {E1F08BCD-AC59-473a-8D45-5A3C8386551C} |
