# AA
<!-- id: aa -->
<!-- origen: b425fe49e0b894a19f88308f84674aa383686a6a -->

Set the _active angle._

## Parameters

You can run this command with or without parameters.

### With parameters

| Parameter number | Description | Accepted values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Active angle | Real number, or **?** to display the current value in a balloon | Yes |

### Without parameters

If you run this command without parameters, it prompts you in the status bar to type the active angle or digitize two points. If you digitize two points, it sets the active angle to the angle of the vector from the first point to the second.

## Notes

Enter the _active angle_ in degrees. Angles are measured counterclockwise from the positive X axis.

The default value is 0.

## Examples

Run the following command to set the active angle to 45 degrees:

```text
AA=45
```

## Command characteristics

| Variable type | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Active angle |
| Toolbar | Active parameters |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C} |
