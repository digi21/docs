# MAXIMUM\_DISTANCE
<!-- id: distancia-maxima -->
<!-- origen: 3d563ab05d775c21810fb5a1c589694ce1180ec9 -->

Set a maximum segment length constraint for the line command.

When the constraint is active, the next segments you draw will not exceed the value assigned to this variable.

## Parameters

Run this command with one parameter or no parameters.

### With one parameter

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Maximum distance to assign, or 0 to disable the maximum segment length constraint | Real number | Yes |

### Without parameters

Without parameters, the application prompts for the maximum segment length in the message bar. You can also digitize two points to assign the distance between them as the maximum segment length.

Enter 0 to disable the maximum segment length constraint.

`MAXIMUM_DISTANCE=?` displays the current value in a balloon.

## Notes

Segment length is measured horizontally, ignoring Z. If the last segment exceeds the maximum distance, [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) shortens it along its direction to that distance.

The default value is 0 (no constraint).

## Examples

Run the command to limit the next line segment to a maximum of 12.5 meters:

```
MAXIMUM_DISTANCE=12.5
```

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/distancia_maxima.mp4" type="video/mp4"></video>

## Command characteristics

| Variable type                                 | [Real](../../../ordenes/variables/variables-reales.md)                        |
| ------------------------------------------------ | ----------------------------------------------------------------------------- |
| Repeats automatically                           | No                                                                            |
| Menu option           | Draw/Polyline restrictions/Maximum perimeter of next segment |
| Toolbar | _This command has no associated toolbar button_ |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                    |
| Implementation | Native |
| Related variables                           | No related variables                                               |
| Internal name                                   | {C3276631-6A15-4AFF-B013-924EF597AC44}                                        |
