# AD1
<!-- id: da1 -->
<!-- origen: 1e21d3ea9ec263795bce27580c99880154de7a32 -->

Set or query the primary _active distance_ and assign the same value to the _secondary active distance_.

## Parameters

Run this command with one parameter or no parameters.

### With one parameter

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Primary and secondary active distance | Real number | Yes |

The command always assigns the same value to both distances; a second parameter is ignored. Use [AD](da.md) to assign different values.

`AD1=?` displays the primary and secondary active distances in a balloon.

### Without parameters

Without parameters, the application prompts for the active distance in the message bar. The value is assigned to both the primary and secondary active distances.

Enter the active distance manually \(type the value and press Enter\), or digitize two points in the drawing window. If you digitize two points, the application assigns the horizontal distance between them, ignoring Z.

## Examples

Run the command to set both the primary and secondary active distances to 12.45 drawing length units:

```text
AD1=12.45
```

## Command characteristics

| Variable type | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Active distance (with two points) |
| Toolbar | Active parameters |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {5F10DD07-28E7-4195-B0BE-EC2519D71225} |
