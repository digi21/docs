# SPEED\_DECR\_XY
<!-- id: velocidad-menos-xy -->
<!-- origen: 9db3d106e3317adfaf7a00f23834167d96d2896f -->

Decreases handwheel speed in XY.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | X and Y speed, a real number greater than 0 | Yes |

With no parameter, multiplies XY speed by 0.80. With a parameter, sets XY speed to that value. If the value is zero, negative or nonnumeric, leaves the speed unchanged and plays the error sound. Use a period as the decimal separator: a comma causes the decimal part to be ignored.

### Examples:

`SPEED_DECR_XY`

Decreases the speed by 20%.

`SPEED_DECR_XY=5.75`

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
| Related commands | [SPEED](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md)<br>[SPEED\_INCR\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-xy.md)<br>[SPEED\_DECR\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-z.md) |
| Internal name | {51955FE8-4F4B-47ec-9AED-1DFC3B58AF07} |
