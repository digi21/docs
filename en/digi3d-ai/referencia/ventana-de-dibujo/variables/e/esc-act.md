# ACT_SCALE
<!-- id: esc-act -->
<!-- origen: d31ad08c10dd60e325f4c831639f120481968b1b -->

Set the active _scale factor_ for points and block insertion.

## Parameters

Run this command with or without parameters.

### With parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | X scale factor, or X, Y, and Z if it is the only parameter | Real number, or **?** to display all three factors in a balloon | Yes |
| 2 | Y scale factor | Real number. With two parameters, the Z factor is 1 | Yes |
| 3 | Z scale factor | Real number | Yes |

### Without parameters

The application prompts for the scale factor in the message bar and suggests the three current factors (X, Y, and Z). Enter one, two, or three factors with the same meaning as ACT_SCALE parameters, or digitize two points in the drawing window. If you digitize two points, the distance between them is assigned as the scale factor for all three axes.

## Notes

The factor applies to points created by commands such as [POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md) and blocks inserted with [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md). It defaults to 1 on all three axes.

## Examples

Run the command to set the scale factor to 3:

```
ACT_SCALE=3
```

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/ESC_ACT.mp4" type="video/mp4"></video>

## Command characteristics

| Variable type                                 | [Real](../../../ordenes/variables/variables-reales.md)                       |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repeats automatically                           | No                                                                           |
| Menu option           | Immediate/Active scale                                                      |
| Toolbar | _This command has no associated toolbar button_ |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                   |
| Implementation | Native |
| Related variables                           | No related variables                                              |
| Internal name | {EDA07B84-E126-4319-993D-01BF5026C11D} |
