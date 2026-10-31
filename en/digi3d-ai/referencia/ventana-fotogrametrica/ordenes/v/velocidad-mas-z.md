# SPEED\_INCR\_Z
<!-- id: velocidad-mas-z -->
<!-- origen: 8193ab379d0f95cf4b7404486f12e4b2fe2173ef -->

Increases handwheel speed in Z.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Z speed, a real number greater than 0 | Yes |

With no parameter, multiplies Z speed by 1.25. With a parameter, sets Z speed to that value. If the value is zero, negative or nonnumeric, leaves the speed unchanged and plays the error sound. Use a period as the decimal separator: a comma causes the decimal part to be ignored.

### Examples:

`SPEED_INCR_Z`

Increases the speed by 25%.

`SPEED_INCR_Z=5.75`

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
| Related commands | [SPEED](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md)<br>[SPEED\_INCR\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-xy.md)<br>[SPEED\_DECR\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-z.md) |
| Internal name | {BEB78FAE-DA21-4c17-B812-2040127167C1} |
