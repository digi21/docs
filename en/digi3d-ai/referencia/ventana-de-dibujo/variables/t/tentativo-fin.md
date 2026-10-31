# SNAP\_END
<!-- id: tentativo-fin -->
<!-- origen: 74af7c7f932d68a714468fc62d97555cb0d7fde8 -->

If enabled, automatically finish recording a linear element when a snap to another entity is accepted.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from Enabled to Disabled or from Disabled to Enabled.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Commonly used to draw party walls.

The variable affects lines digitized with [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md). If the line already has a point, the snap point is added and the line then finishes. If the snap point is the first point, the line starts there and does not finish.

The variable is disabled when Digi3D.AI starts. If [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md) is enabled, each snap disables this variable and enables it only if the _AUTOSMODE_ settings specify this for the active code and the snapped entity code.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Snaps/Snap and end |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {14285ACD-EC5D-4895-B10D-8BEFF282EC48} |
