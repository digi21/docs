# CURSOR
<!-- id: cursor -->
<!-- origen: 60f348813f0aae98aceca778638a2067619b0f0d -->

Set the cursor size.

## Notes

The cursor size determines the search area when selecting an entity in the drawing file.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Cursor size | Integer greater than or equal to 1. Smaller values are replaced with 1 | Yes. If omitted, the size cycles through 1, 2, 3, 4, and back to 1 |

### Example

CURSOR=4

Set the cursor size to 4.

If you type CURSOR without parameters, the size cycles from 1 through 4.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Change cursor size |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {E9215A0A-2A41-4a95-868C-1B3EF20AB870} |
