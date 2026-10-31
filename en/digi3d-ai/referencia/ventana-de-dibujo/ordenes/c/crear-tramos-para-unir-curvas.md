# CREAR\_TRAMOS\_PARA\_UNIR\_CURVAS
<!-- id: crear-tramos-para-unir-curvas-2 -->
<!-- origen: 73b6ad7034f1608892ba2b05a8631159da009780 -->

Create two-vertex lines joining nearby, unconnected contour line endpoints at the same elevation.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Contour line code | Code. The command compares the first code of each entity | No |
| 2 | Maximum horizontal distance between endpoints to join | Number. Accepts a comma or period as the decimal separator | No |

For example, `CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10` joins contour lines with code `020123` whose endpoints are less than 10 units apart.

## Notes

The command compares each pair of undeleted entities whose first code matches the specified code. It discards the pair if their first vertex Z values differ, or if any endpoint of one entity coincides with an endpoint of the other. Otherwise, it tests endpoint combinations in this order: start-start, start-end, end-start, and end-end. For the first combination whose endpoints are less than the specified distance apart, it creates a two-vertex line joining them, using the codes of the first entity.

The drawing window geographic calculator computes the distance.

When finished, if any connecting lines were created, the command displays their count in a balloon and plays the completion sound. Otherwise, it displays the "Nothing has been added" balloon and plays the error sound.

If the parameter count is not two or the distance is not a number, the command plays the error sound and displays a dialog with the reason and usage syntax.

This command is Python script `crear_tramos_para_unir_curvas.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

The [Join nearby contour lines](/digi3d-ai/programacion/python/panel-de-python/ejemplos/crear-tramos-para-unir-curvas.md) page explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | crear\_tramos\_para\_unir\_curvas.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [crear\_tramos\_para\_unir\_curvas.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crear_tramos_para_unir_curvas.py) |
| Related variables | No related variables |
| Related commands | No related commands |
