# SNAP\_INSERT
<!-- id: tentativo-inserta -->
<!-- origen: 20084f11f50e935c68af822e9e9049a4dc601867 -->

Insert a vertex into linear entities you snap to while recording lines.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from Enabled to Disabled or from Disabled to Enabled.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Enable or disable SNAP\_INSERT from the on-screen menu.

A vertex is inserted when the snap falls on a line or polygon segment, rather than on an existing vertex. The new vertex Z is interpolated between the segment ends.

Insertion occurs only if no command is running or [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) is running, unless the option to always insert is enabled in the snap properties.

The variable is disabled when Digi3D.AI starts. If [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md) is enabled, each snap disables this variable and enables it only if the _AUTOSMODE_ settings specify this for the active code and the snapped entity code.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Snaps/Snap insert |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {76E34B6C-24DC-4211-8403-4FDB07CE4582} |
