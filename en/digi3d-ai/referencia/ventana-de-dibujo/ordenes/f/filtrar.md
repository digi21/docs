# FILTRAR
<!-- id: filtrar-2 -->
<!-- origen: f7ea9fae8a91e7016bd1fc13ee8af5cce8c696ae -->

Delete contour lines that do not match a contour interval, and assign the index or intermediate contour code to the remaining lines according to their Z coordinate. This reproduces the FILTRAR program from Digi for MS-DOS.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Index contour code | Code | No |
| 2 | Intermediate contour code | Code | No |
| 3 | Contour interval | Number greater than zero. Accepts a comma or period as the decimal separator | No |
| 4 | Index contour frequency: one index contour every specified number of contours | Integer greater than zero. Defaults to 5 | Yes |

For example, to filter mapping at scale 1:1000 with a contour interval of 1, index contour code `020124`, and intermediate contour code `020123`, use `FILTRAR=020124 020123 1`.

## Notes

The command processes undeleted entities with the index or intermediate contour code:

1. Delete entities whose first vertex Z is not a multiple of the contour interval.
2. Assign the index contour code to entities whose Z is a multiple of the contour interval multiplied by the index contour frequency.
3. Assign the intermediate contour code to the remaining entities.

Z is rounded to three decimal places before comparison. To change a code, the command adds a clone and deletes the original entity. The clone has only the new code, with no table or record: other entity codes are not retained.

If the parameter count is not three or four, the contour interval is not a number greater than zero, or the index contour frequency is not an integer greater than zero, the command plays the error sound and displays a dialog with the reason and usage syntax.

This command is Python script `filtrar.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

The [Filter intermediate and index contour lines](/digi3d-ai/programacion/python/panel-de-python/ejemplos/filtrar.md) page explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | filtrar.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [filtrar.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/filtrar.py) |
| Related variables | No related variables |
| Related commands | [ELIMINA\_CURVAS\_POR\_EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina-curvas-por-equidistancia.md)<br>[REDONDEA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redondea-z.md) |
