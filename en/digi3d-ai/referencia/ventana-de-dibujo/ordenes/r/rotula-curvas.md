# TAG\_CONTOURS
<!-- id: rotula-curvas -->
<!-- origen: aa6b5b3ed521328780ddc7a6d32aeab880ab8d22 -->

Label one or more contours at once with their elevations.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 … N | Code or codes of lines to label | Code identifier | Yes |

## Notes

Without parameters, display a dialog box for selecting codes.

Specify two points defining a segment. Preview the texts as the cursor moves. For each line bearing a specified code and crossing the segment, create text at the crossing with its Z value. Align text with the crossed line segment and rotate it 180º if it would be upside down.

Use height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md), and the active code. After creating texts, request a new segment.

Entities disabled with [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md) are not labeled.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Tag contour lines... |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CONTOUR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-curvas.md)<br>[CONTOUR\_HEIGHTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cotas-curvas.md)<br>[TAG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-z.md) |
| Internal name | {B2B07A8C-8AF6-481b-BD30-324B6A4A7919} |
