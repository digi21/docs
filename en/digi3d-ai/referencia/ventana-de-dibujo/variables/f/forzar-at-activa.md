# FORCE\_TH\_ACTIVE
<!-- id: forzar-at-activa -->
<!-- origen: 791bcaeb92ebc1f031b95af163c79919e7942b23 -->

If FORCE_TH_ACTIVE is enabled, both during stereoplotting and editing, all text created by any command, such as [COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md), is stored with the active text height set when that command runs.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Whether to enforce the active text height |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Before running the command, set the active text height.

Disabled by default.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) |
| Internal name | {EE4E0666-A1F0-4b88-B9A6-A46F83AF22E3} |
