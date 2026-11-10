# DRAW\_DISTANCE
<!-- id: dibuja-distancia -->
<!-- origen: d1ce84c0103d564aeaddcd3080dd4e1eea31a30d -->

Insert text with the plan distance \(in two dimensions, 2D\) between two digitized points.

## Parameters

Does not accept parameters.

## Notes

Digitize the first point. A temporary line appears between it and the cursor. Digitize the second point to calculate their distance, insert text with that distance, and end.

Place text at the midpoint between the two points, rotated along the line joining them, with height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

Calculate the distance in plan \(X, Y coordinates\), ignoring elevation differences, with the drawing's geographic calculator, as with [MEASURE\_SEGMENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md): with a geographic reference system, the distance is expressed in working units rather than degrees. For spatial distance \(including Z\), use [DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md); for height difference alone, use [DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Define height/2D distance |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MEASURE\_SEGMENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md)<br>[PUT\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-distancia.md) |
| Internal name | {13136F31-77CB-4603-8755-359C8BD03A1C} |
