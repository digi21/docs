# FORCE\_ACTIVE\_AA
<!-- id: forzar-aa-activa -->
<!-- origen: 2f8be06e11b9de8f916a76bf045669c9a9488847 -->

If FORCE_ACTIVE_AA is enabled, both during stereoplotting and editing, all text created by any command, such as [COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md), is stored with the active angle set when that command runs.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Whether to enforce the active angle |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Before running the command, set the active angle.

Disabled by default.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) |
| Internal name | {AC0EB1BA-01B4-4627-ABE0-6D33D9D9E164} |
