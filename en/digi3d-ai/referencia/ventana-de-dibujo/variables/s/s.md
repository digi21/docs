# S
<!-- id: s-3 -->
<!-- origen: e2ee4ffa1f77c2d7613b7e1b355425a568525266 -->

Set whether _Digi3D.AI_ automatically smooths the line you are digitizing when you finish it.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

If the Boolean variable **S** is enabled, finishing a line smooths it before storing it in the drawing file, regardless of how you finish it \(for example, by pressing _Reset_ or running [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)\).

Smoothing uses [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) as the point spacing.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/On finishing current line.../Smooth |
| Toolbar | Action when ending line |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) |
| Internal name | {E108CB63-71BE-4f3d-AFA0-BF1D9D59BE96} |
