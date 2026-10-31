# GOTO\_START
<!-- id: ir-principio -->
<!-- origen: 922df12fc7815a6db255e72fd25a212e32aeefe7 -->

Set the coordinates to which the photogrammetric window moves when a line is finished.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Where to move the photogrammetric window when a line is finished | **0**: Remain in place.<br>**1**: Go to the start of the line.<br>**2**: Go to the start of the line and add the contour interval to its Z.<br>**3**: Go to the start of the line and subtract the contour interval from its Z.<br>**4**: Go to the last vertex and add the contour interval to its Z.<br>**5**: Go to the last vertex and subtract the contour interval from its Z.<br>**?**: Display the current value in a balloon. | Yes |

Without parameters, the command assigns 1 if the current value is 0, and 0 otherwise. The parameter is reduced to the nonnegative remainder modulo 6, so 6 is equivalent to 0 and -1 is equivalent to 5.

## Notes

GOTO_START moves the photogrammetric window to the start of the line when the line is finished, using the starting Z or that Z plus or minus the [contour interval](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

With values 2 through 5, if [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) is enabled, the locked Z becomes the new Z.

The default value is 0.

## Command characteristics


| Command type | [Numeric variable](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/On finishing current line.../Remain in place<br>Draw/On finishing current line.../Go to start<br>Draw/On finishing current line.../Go to start and raise Z<br>Draw/On finishing current line.../Go to start and drop Z<br>Draw/On finishing current line.../Raise Z<br>Draw/On finishing current line.../Drop Z |
| Toolbar | Action when ending line |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Internal name | {F210493F-EAAD-4eeb-921D-CA828AC4129E} |
