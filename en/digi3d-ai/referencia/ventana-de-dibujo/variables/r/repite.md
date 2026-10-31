# REPEAT
<!-- id: repite -->
<!-- origen: d4bd5678332e68a7171dd50e137ccee957e06421 -->

If this variable is enabled, the application repeats the last command executed, provided that the command supports repetition.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Repeat |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

REPEAT enables or disables automatic repetition of commands that support it after they finish.

REPEAT can be enabled or disabled. It is enabled each time you open a drawing file.

* If the variable is enabled and you run a command that supports repetition, such as [2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/2/2p.md), 2P finishes after you digitize the square, and _DigiNG_ runs _2P_ again with the same parameters.
* If the variable is disabled and you run a command that supports repetition, the command does not run again automatically after it finishes.

Some commands do not support automatic repetition, such as [DELETE\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md). If this command supported repetition and you ran it with REPEAT enabled, the entire model would be deleted.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Flags/Repeat last command |
| Toolbar | Automatic commands |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {AB7E2B12-8E22-42d1-AE7B-E7236E062D58} |

## Video
