# NDEC
<!-- id: ndec -->
<!-- origen: 60f86c660bee691c20f6bcf088a60a62b95ac08d -->

Set the number of decimal places displayed in numeric text for X, Y, and Z coordinates, distances, areas, and other values.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Numeric value | Integer or **?** | No |

### Examples

`NDEC=3`

Set the number of decimal places to 3.

`NDEC=?`

Display the current number of decimal places.

## Notes

If you run the command without parameters or with a negative value, it plays an error sound and leaves the value unchanged. Each drawing window has its own number of decimal places, set to 3 when the window opens.

## Command characteristics

| Command type | [Numeric variable](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {C95747DC-D101-463f-A586-F76C09638F2D} |
