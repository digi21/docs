# SNAP\_CUTS
<!-- id: tentativo-corta -->
<!-- origen: f1b6b07e3878731b638a141009183cfe8506695a -->

Snap to an entity and split the snapped entity.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from Enabled to Disabled or from Disabled to Enabled.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

If enabled, accepting a snap to a line runs [CUT\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-e.md) on that line at the snap point. Polygons and other entity types are not split.

Splitting occurs only if no command is running or [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) is running, unless the option to always split is enabled in the snap properties.

The variable is disabled when Digi3D.AI starts. If [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md) is enabled, each snap disables this variable and enables it only if the _AUTOSMODE_ settings specify this for the active code and the snapped entity code.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Snaps/Snap and cut |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {87370109-FF82-421c-92F6-5891EB894BCE} |
