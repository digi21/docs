# SHOW\_CONTOUR\_PASS
<!-- id: mostrar-paso-curvas -->
<!-- origen: 1658f67a2e4c61e455cd502074107dd2374fb8f3 -->

Enable or disable contour pass display: mark the parts of configured lines whose Z is near the _active Z_ with an animated dashed line.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Variable value |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |

## Notes

Any nonzero number enables the variable. If the parameter is neither a number nor **?**, the command interprets it as 0 and disables the variable.

Set the tolerance and line codes with [CONFIGURE\_SHOW\_CONTOUR\_PASS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md). Until configured, enabling the variable marks nothing and displays no warning.

Spans are marked only if Z is locked in the photogrammetric window, for example with [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) or [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md). Nothing is marked without an open photogrammetric window.

Enabling or disabling the variable recalculates spans and refreshes the view. Disabling it removes the marked spans.

Spans are drawn as an animated red and white dashed line with a mark at each vertex, in the drawing and photogrammetric windows. They are not part of any drawing file or selection.

This variable is disabled each time Digi3D.AI starts.

## Command characteristics

| Variable type | [Boolean](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Snaps/Show curve pass |
| Toolbar | Snap |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) |
| Related commands | [CONFIGURE\_SHOW\_CONTOUR\_PASS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/configurar-mostrar-paso-curvas.md) |
| Internal name | {9D6A4AC4-08FF-43AB-97BF-60E9D6DC7BB2} |
