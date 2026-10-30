# SELECT\_ALL
<!-- id: selecciona-todo -->
<!-- origen: f7ede4a423cbf3fec406fc87db35c07c7a2f196c -->

Select all entities in the drawing file while running a command that supports multiple selection.

## Parameters

Does not accept parameters.

## Notes

The command marks all entities in the active drawing file that are not deleted, are visible, and are within the area of interest. Press the data button or the `+` key to pass them to the active command, or press `-` or `Esc` to cancel. If no entity meets these conditions, the command displays a warning and finishes.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select all |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DESELECT\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/deselecciona-todo.md)<br>[SELECT\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-multiple.md) |
| Internal name | {235BFAE7-3D2C-4C5B-9198-434AB2718EE0} |
