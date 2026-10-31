# RUN\_COMMAND\_PASSING\_LAST\_GEOMETRY
<!-- id: ejecuta-orden-pasandole-ultima-geometria -->
<!-- origen: 3d4110bc1e060b69eca54fe7430104d62c11c0a5 -->

Run a command expecting entity selection from macroinstructions and commands assigned to keystrokes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Command to run | No |

## Notes

Run the command specified as the parameter. If it expects entity selection, RUN\_COMMAND\_PASSING\_LAST\_GEOMETRY then runs [SELECT\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md), which passes the last visible entity in the drawing file to that command.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SELECT\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) |
| Internal name | {3EABA728-5DEA-4E67-A970-37A7789970B5} |
