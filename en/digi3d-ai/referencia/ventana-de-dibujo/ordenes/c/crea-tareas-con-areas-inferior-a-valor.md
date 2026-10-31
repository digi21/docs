# CREA\_TAREAS\_CON\_AREAS\_INFERIOR\_A\_VALOR
<!-- id: crea-tareas-con-areas-inferior-a-valor-2 -->
<!-- origen: 3c8dd6cc04f6230e3918661360d79d2c75e599c5 -->

Add a task to the [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md) for each polygon or line closed in plan whose absolute area is below the specified value.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Maximum area in squared coordinate system units | Number. Accepts a comma or point as decimal separator | No |

For example, `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100` creates a task for each closed entity smaller than 100 square units.

## Notes

Each task title is the area with three decimal places. Double-click to move the drawing window to the entity bounding box center.

If there is not exactly one parameter or the area is not numeric, sound the error tone and display a dialog box explaining the reason and usage.

This command is Python script `crea_tareas_con_areas_inferior_a_valor.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

[Create tasks for small areas](/digi3d-ai/programacion/python/panel-de-python/ejemplos/crea-tareas-con-areas-inferior-a-valor.md) explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | crea\_tareas\_con\_areas\_inferior\_a\_valor.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [crea\_tareas\_con\_areas\_inferior\_a\_valor.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crea_tareas_con_areas_inferior_a_valor.py) |
| Related variables | No related variables |
| Related commands | No related commands |
