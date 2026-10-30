# SEE
<!-- id: ver -->
<!-- origen: d30518968e6801d8727fe882d7593002f7717161 -->

Enable user confirmation of the snap selection.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

If SEE is enabled, snapping to an entity with the snap button displays an animation of the entity so you can check whether it is the intended snap target.

If SEE is disabled, the application snaps to an entity with the snap button without requesting confirmation.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Snaps/Check |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {00C9CFB9-8403-4ab4-8E3D-82CE3328292B} |
