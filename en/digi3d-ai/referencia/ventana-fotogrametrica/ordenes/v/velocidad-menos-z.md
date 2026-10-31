# SPEED\_DECR\_Z
<!-- id: velocidad-menos-z -->
<!-- origen: c5aaddede387435c05ef2fe5d8c004fb8e584697 -->

Decreases handwheel speed in Z.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Z speed, a real number greater than 0 | Yes |

With no parameter, multiplies Z speed by 0.80. With a parameter, sets Z speed to that value. If the value is zero, negative or nonnumeric, leaves the speed unchanged and plays the error sound. Use a period as the decimal separator: a comma causes the decimal part to be ignored.

### Examples:

`SPEED_DECR_Z`

Decreases the speed by 20%.

`SPEED_DECR_Z=5.75`

Sets Z speed to 5.75.

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
| Internal name | {DE4ED45B-F07A-47c4-BC70-67B4DB572784} |
