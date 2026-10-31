# ERR
<!-- id: err -->
<!-- origen: 7186a7312b283a723a95fd62bc2a7ed4192e6e18 -->

Display errors from the drawing file generated with [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md) or BINTOP, if that file is loaded as a reference for the working file.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Error number or `?` | Integer greater than or equal to 0, or `?` | Yes |

### Examples

`ERR=3`

Display error number 3.

`ERR=?`

Display the current error number.

## Notes

Without parameters, the command requests the error number in the status bar. Each error is the entity with that number in the first reference file; the command moves the view to its center.

_BINTRAM_ and _BINTOP_ generate a .bin file with symbols at detected error positions. Load it as a reference for the working file.

You can also traverse errors in the Tasks pane. It lists errors after running _BINTRAM_ or _BINTOP_. Click an error to center the view on its position.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md)<br>[ERR-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-menos.md)<br>[ERR+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-mas.md) |
| Internal name | {E7BF3A8A-5AA8-474a-9A8E-4FA08264D19C} |
