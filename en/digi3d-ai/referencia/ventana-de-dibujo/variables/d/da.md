# AD
<!-- id: da -->
<!-- origen: 68285c30e33f651075958b37876a6c5fdbc622d5 -->

Set or query the _active distance_ and _secondary active distance_.

## Parameters

Run this command with one parameter, two parameters, or no parameters.

### With one parameter

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Primary and secondary active distance | Real number | Yes |

### With two parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Primary active distance | Real number | Yes |
| 2 | Secondary active distance | Real number | Yes |

### Without parameters

Without parameters, the application prompts for the active distance in the message bar, then for the secondary active distance after you enter the first value.

Enter each distance manually \(type the value and press Enter\), or digitize two points in the drawing window for each distance. If you digitize two points, the application assigns the horizontal distance between them, ignoring Z.

### Query

`AD=?` displays the primary and secondary active distances in a balloon.

## Notes

The default value for both distances is 1.

## Examples

Run the command to set both the primary and secondary active distances to 12.45 drawing length units:

```text
AD=12.45
```

Run the command to set the primary active distance to 12.45 drawing length units and the secondary active distance to 22.49:

```text
AD=12.45 22.49
```

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/DA.mp4" caption="" type="video/mp4"></video>

## Command characteristics

| Variable type | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Active distance (with four points) |
| Toolbar | Active parameters |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {5481B0E5-F64A-4249-A51E-E9076404F0DA} |
