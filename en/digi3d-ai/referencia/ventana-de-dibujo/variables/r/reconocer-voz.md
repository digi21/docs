# SPEECH\_RECOGNITION
<!-- id: reconocer-voz -->
<!-- origen: 75b1c1cedd9580b277e8f3a9c928f9137091ca80 -->

Enable or disable real-time speech recognition.

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Value specifying whether to enable or disable speech recognition. |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

If SPEECH_RECOGNITION is enabled, the application listens for commands through the computer microphone. If it recognizes a command specified on the [Speech recognition](../../../editor-de-tablas-de-codigos/pestanas/reconocimiento-de-voz.md) tab of the [Code table editor](/digi3d-ai/referencia/editor-de-tablas-de-codigos/), it runs that command.

## Command characteristics

| Command type | [Boolean variable](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Speech recognition |
| Toolbar | Speech recognition. |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Internal name | {69A21D20-56F4-4FBE-B484-3A418E313F3A} |
