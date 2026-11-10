# DRAW\_HEIGHT
<!-- id: dibuja-altura -->
<!-- origen: de6308ae95f96d45c3aed2e0c8242dfa2bdcf2dd -->

Insert text with the height difference \(Z coordinate increment\) between two digitized points.

## Parameters

Does not accept parameters.

## Notes

Digitize the first point. A temporary line appears between it and the cursor. Digitize the second point to calculate their Z coordinate difference, insert text with that difference, and end.

Place text at the midpoint between the two points, rotated along the line joining them, with height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

The value is the elevation difference \(second point Z minus first point Z\), so it can be negative if the second point is lower. To label distance instead, use [DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md) or [DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Define height/Height |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [AUTOMATIC\_HEIGHT\_LABEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acota-h-automatica.md)<br>[AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[PUT\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-altura.md) |
| Internal name | {1FF8D81D-06B6-4B5F-9E66-5B379753A58D} |
