# DRAW\_DISTANCE\_3D
<!-- id: dibuja-distancia-3d -->
<!-- origen: 7f577eb85fa80092b22d855a094879f1b60b7a3e -->

Insert text with the distance in three dimensions \(3D\) between two digitized points, accounting for their elevation difference.

## Parameters

Does not accept parameters.

## Notes

Digitize the first point. A temporary line appears between it and the cursor. Digitize the second point to calculate their distance, insert text with that distance, and end.

Place text at the midpoint between the two points, rotated along the line joining them, with height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

Calculate the distance in space \(X, Y, Z coordinates\) with the drawing's geographic calculator, as with [MEASURE\_SEGMENT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md): with a geographic reference system, the distance is expressed in working units rather than degrees. It includes the effect of the points' elevation difference. For plan distance alone, use [DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Define height/3D distance |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MEASURE\_SEGMENT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md) |
| Internal name | {E2823D2D-8DE8-45C7-AC4A-FD1D81C8E712} |
