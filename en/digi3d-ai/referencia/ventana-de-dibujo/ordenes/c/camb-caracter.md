# CHNG\_CHARACTER
<!-- id: camb-caracter -->
<!-- origen: 65afc59f3c10ee52dc610b9f1cb0a1753dbf1c27 -->

Replace a specified text character with another.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Old character | No |
| 2 | New character | No |

## Notes

If either parameter is missing, sound the error tone and do nothing. The command does not prompt for input.

Replace all occurrences of the old character with the new one in visible, undeleted texts within the area of interest. If a parameter has multiple characters, use only its first character for both searching and replacement.

### Command syntax

`CHNG_CHARACTER=<carácter anterior> <carácter nuevo>`

If quality control rejects a modified entity, retain its original unchanged. Handle multiple entities independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CHNG\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-texto.md)<br>[REPLACE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/reemplazar-texto.md) |
| Internal name | {39422C18-7C3D-44a8-92A8-84007AFBE563} |
