# SCALE\_SPEED
<!-- id: escalar-velocidad -->
<!-- origen: 7b62979800d0ade9b643757a98a6e6ce4d061802 -->

Enables or disables scaling handwheel speed according to the display zoom.

## Parameters

| Parameter | Command behavior |
| :--- | :--- |
| No parameter | Toggles speed scaling on or off |
| 0 | Disables scaling |
| Nonzero | Enables scaling |

### Example:

`SCALE_SPEED=0`

## Notes

With scaling enabled, the movement produced by each handwheel pulse is divided by the zoom factor: the cursor moves at the same screen speed at every zoom level. With scaling disabled, each pulse moves the cursor the same distance in the model, regardless of zoom.

Scaling is enabled by default in every new photogrammetric window. On some devices with low pulse-count handwheels, drawing in continuous mode while zoomed out produces stepped lines because of the encoder's low precision. Disabling scaling eliminates this effect.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Photogrammetric window/Speed/Scale based on current zoom |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SPEED](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md) |
| Internal name | {FD1A17B2-F83C-450b-B583-1CC3F6322467} |
