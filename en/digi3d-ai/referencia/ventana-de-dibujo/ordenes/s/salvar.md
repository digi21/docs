# SAVE
<!-- id: salvar -->
<!-- origen: c364764fac2b4d9fef052a04c65ce96e8ebad5cf -->

Set the interval, in minutes, between automatic backups of the active drawing file.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Interval between automatic backups, in minutes | Integer | Yes |

## Notes

If you omit the parameter or its value is 0, the command prompts for the interval in the status bar. The suggested value is the current interval. Enter 0 in the status bar to disable automatic backups.

The automatic backup is the same as the one made by [BAK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bak.md). It is created when an entity is added, if the interval has elapsed since the previous backup.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BAK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bak.md) |
| Internal name | {11647E64-636B-4947-A1F9-CAB25BD68091} |
