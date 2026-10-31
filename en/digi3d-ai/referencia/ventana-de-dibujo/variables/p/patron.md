# PATTERN
<!-- id: patron -->
<!-- origen: 06cd1bb7a5d92805f4a0a5eb7f0d8c92cc178f3a -->

Enable or disable on-screen display of line patterns in the drawing file.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

When PATTERN is enabled, DigiNG uses the [code table](/digi3d-ai/referencia/editor-de-tablas-de-codigos/) information to display lines with plotting symbology.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Viewing parameters/Activate pattern |
| Toolbar | Viewing parameters |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {00203494-2ED6-447b-A403-E11AE9267622} |
