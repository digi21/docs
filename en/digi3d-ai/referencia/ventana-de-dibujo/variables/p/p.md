# P
<!-- id: p-3 -->
<!-- origen: 7066a77070e1c7a6e57ebe93a05c2bf02a30e9e7 -->

Automatically draw a parallel to a linear entity when you finish recording it.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

When P is enabled, the application draws the parallel with the same code as the original entity.

Set the [active distance](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md), including its sign:

* Positive: the parallel is drawn to the right in the direction the entity is drawn.
* Negative: the parallel is drawn to the left in the direction the entity is drawn.

The command does not prompt for the active distance: the parallel is calculated using _AD_ when the line is finished. When Digi3D.AI starts, _AD_ is 1. If _AD_ is 0, the parallel coincides with the original line.

The parallel is created only when finishing a line digitized with [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/On finishing current line.../Automatically create a parallel (based on active distance) |
| Toolbar | Action when ending line |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) |
| Internal name | {89889DCE-1E5E-4c13-B08E-C66B10DF26BC} |
