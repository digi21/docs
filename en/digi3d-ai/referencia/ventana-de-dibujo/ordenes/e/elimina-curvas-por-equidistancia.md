# ELIMINA\_CURVAS\_POR\_EQUIDISTANCIA
<!-- id: elimina-curvas-por-equidistancia-2 -->
<!-- origen: 1ce2d46b81dbe388a6c774634cddb6dd16b254c4 -->

Delete contour lines with the specified codes whose Z coordinate is a multiple of the contour interval.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Contour line code | Code | No |
| 2 onward, except the last | Additional contour line codes | Codes | Yes |
| Last | Contour interval | Number greater than zero. Accepts a comma or period as the decimal separator | No |

For example, `ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5` deletes contour lines with code `020123` or `020124` whose Z is a multiple of 5.

## Notes

The command deletes entities with any of the specified codes whose first vertex Z is a multiple of the contour interval.

The command plays the error sound and displays a dialog explaining the reason in these cases:

* Fewer than two parameters are supplied, or the last parameter is not a number greater than zero. The dialog also shows the usage syntax.
* No entities have the specified codes.
* No entities with those codes have a Z that is a multiple of the contour interval.

This command is Python script `elimina_curvas_por_equidistancia.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

The [Delete contour lines by interval](/digi3d-ai/programacion/python/panel-de-python/ejemplos/elimina-curvas-por-equidistancia.md) page explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | elimina\_curvas\_por\_equidistancia.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [elimina\_curvas\_por\_equidistancia.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/elimina_curvas_por_equidistancia.py) |
| Related variables | No related variables |
| Related commands | [FILTRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/filtrar.md) |
