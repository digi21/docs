# FIXZ
<!-- id: fijaz -->
<!-- origen: c6609fe64763677aa0e3815ab087c89dc3df0c86 -->

Enable or disable locking the Z coordinate to the nearest multiple of the [contour interval](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Value specifying whether to lock the Z coordinate |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Set the contour interval in the new project dialog box or with [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

When enabled, the command rounds the cursor Z to the nearest multiple of the contour interval, moves the cursor to that Z, and locks it so that changing height with the stereoplotter pedal cannot modify it. If the interval is not greater than 0, no rounding occurs: the current cursor Z is locked. Disabling it unlocks Z. **?** only displays the value; it does not move the cursor.

Disabled by default.

If FIXZ is enabled, Z is recorded at a constant value when drawing contour lines. Enabling FIXZ with a contour interval greater than 0 adjusts Z to the nearest multiple of that interval.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Z Coordinate/Set Z coordinate as the multiple of the nearest equidistant |
| Toolbar | Z Coordinate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) |
| Internal name | {17B6ECF4-E5F7-4fc6-8030-CE8C698D08B7} |
