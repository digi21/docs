# EQUIDISTANCE
<!-- id: equidistancia -->
<!-- origen: ab720e4969f61468c2930439d8f4aee696623176 -->

Set the contour interval.

## Parameters

You can run this command with one parameter or without parameters.

### With one parameter

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Numeric value | Contour interval to assign | Yes |
|  |  |  |  |

### Without parameters

The application prompts you in the message bar for the contour interval. Type a value or digitize two points in the drawing window. If you digitize two points, the distance between them is assigned as the contour interval.

## Notes

The default value is the value in the **Equidistance** field of the **Registry** parameter group on the [Drawing file](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab.

## Examples

Run the command to set the contour interval to 5 drawing length units:

```text
EQUIDISTANCE=5
```

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/EQUIDISTANCIA.mp4" caption="" type="video/mp4"></video>

## Command characteristics

| Variable type | [Real](../../../ordenes/variables/variables-reales.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Interpolation parameters/Equidistance |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {2E74D834-9A0E-4832-B759-B5C7CE794683} |
