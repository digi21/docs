# AUTOMATIC\_HEIGHT\_LABEL
<!-- id: acota-h-automatica -->
<!-- origen: 22a17d2cc00d4873a4a73424c3cd181bf27e1f40 -->

If the active sensor supports it, project a line downward and upward and dimension its intersection with the model.

## Parameters

Does not accept parameters.

## Notes

An open photogrammetric window with a supporting sensor (the point cloud sensor) is required. If no photogrammetric window is open or the active sensor does not support this command, display an error message and end.

As the cursor moves, find the nearest model point below and above it and preview the dimension. Enter a point to add these to the drawing file:

* A line between the lower and upper points.
* Text at the line midpoint with their Z difference, using the drawing window's decimal places and active [text height](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) and [text justification](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md) |
| Internal name | {8F359476-FD67-4C4D-8509-24E0C230F661} |
