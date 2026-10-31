# AUTOSMODE
<!-- id: automodob -->
<!-- origen: e7ff09bfa42232676a17a6661f5fe7aa2e169d74 -->

Enable or disable automatic search mode.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic search mode | Without a parameter, the Boolean variable toggles between Enabled and Disabled.<br>**0**: Disable it.<br>**1**: Enable it.<br>**?**: Display a balloon showing whether it is enabled or disabled. | Yes |

## Notes

Before enabling automatic search mode, specify the search mode table with [AUTO\_SMODE\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md).  
You can also enable exhaustive search mode to prevent snapping to entities not specified in the search table. Enable it with [EXHAUSTIVE\_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md).

## Command characteristics

| Command type | Boolean variable |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXHAUSTIVE\_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[CHNG\_SMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md)<br>[AUTO\_SMODE\_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md) |
| Internal name | {23F027FB-FAF0-4a2b-88BB-7FCF42E433CA} |
