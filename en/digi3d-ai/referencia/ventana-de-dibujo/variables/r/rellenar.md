# FILL IN
<!-- id: rellenar -->
<!-- origen: 64962f2f9f92cbfe3d2d50aab8d2a94a11de87be -->

Enable or disable filling closed linear entities.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Each entity fill is defined in its code representation in the [code table](/digi3d-ai/referencia/editor-de-tablas-de-codigos/). Only entities whose code has a colored fill type are filled.

The variable is specific to each drawing window. Changing its value refreshes that window.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Viewing parameters/Fill in polygons |
| Toolbar | Viewing parameters |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {0F8FA533-635B-4b58-B386-EE9FA424B5BC} |
