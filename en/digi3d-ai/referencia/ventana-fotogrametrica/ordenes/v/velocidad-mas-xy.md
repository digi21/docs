# SPEED\_INCR\_XY
<!-- id: velocidad-mas-xy -->
<!-- origen: a5be6c52c6541583321abfa23da7357f5ee23303 -->

Increases handwheel speed in XY.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | X and Y speed, a real number greater than 0 | Yes |

With no parameter, multiplies XY speed by 1.25. With a parameter, sets XY speed to that value. If the value is zero, negative or nonnumeric, leaves the speed unchanged and plays the error sound. Use a period as the decimal separator: a comma causes the decimal part to be ignored.

### Examples:

`SPEED_INCR_XY`

Increases the speed by 25%.

`SPEED_INCR_XY=5.75`

Sets XY speed to 5.75.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | Digi3D.CommonCommands.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SPEED](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md)<br>[SPEED\_INCR\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-z.md)<br>[SPEED\_DECR\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-xy.md) |
| Internal name | {DAD1167D-02DB-4790-A8E7-9E30791DC985} |
