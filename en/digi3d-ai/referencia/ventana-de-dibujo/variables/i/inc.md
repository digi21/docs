# INC
<!-- id: inc -->
<!-- origen: 964a27ec75a7d7c4ed2c8908ee59abbdd073b29c -->

Set the active recording increment to the value you specify when running this command.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Numeric value | Real number | Yes |

Without parameters, the application prompts in the status bar for you to type the recording increment or digitize two points. If you digitize two points, it assigns the distance between them as the recording increment.

### Examples

INC=27

Set the recording increment to 27 drawing length units.

INC=?

Display the current recording increment.

## Notes

The recording increment is the distance between recorded points when entering data in continuous mode. It is also the distance used by line smoothing (the [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) variable) and [INTER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inter.md).

The initial value is the recording increment saved in the application settings (1 if no value is saved).

## Command characteristics

| Command type | [Real variable](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) |
| Internal name | {8C1FDD9C-FF39-4f55-BF9E-253E45944CE8} |
