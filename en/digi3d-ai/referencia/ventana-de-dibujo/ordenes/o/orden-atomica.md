# ORDEN\_ATOMICA
<!-- id: orden-atomica -->
<!-- origen: 511194cf01dfd98ec2da901e8805230535c31e29 -->

Run the commands passed as parameters as atomic commands.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Commands to run, separated by spaces | No |

## Notes

The command runs the commands in the order supplied. Enclose each command that takes parameters in double quotation marks: `ORDEN_ATOMICA="OFF=02*" "ON=0201*"`.

If any of the commands is interactive, ORDEN\_ATOMICA remains active until all the interactive commands it launched have finished.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {5B3B09A9-7769-4755-9EAF-D094D8183252} |
