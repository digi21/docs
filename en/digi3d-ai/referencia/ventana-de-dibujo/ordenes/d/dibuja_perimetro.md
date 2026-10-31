# DRAW\_PERIMETER
<!-- id: dibuja-perimetro -->
<!-- origen: 6b62f5cd3e1cfe93b12891935b11a77d18a35fcf -->

Calculate the perimeter \(length\) of a selected drawing entity and place text with this value at the specified position.

## Parameters

Does not accept parameters.

## Notes

Select the line or polygon whose perimeter to label. Selecting another entity type sounds the error tone.

After selection, the status bar shows the perimeter suffix. It is optional and defaults to `m`. Enter the desired suffix and specify the destination point for the perimeter text. Text uses angle [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

After placing the text, the command requests another entity. Press Esc to end.

For a polygon, the perimeter is its exterior boundary's perimeter: holes are excluded.

Calculate the perimeter in plan \(X, Y coordinates\), ignoring elevation changes. For the spatial length including Z, use [DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Define height/2D perimeter of selected polyline |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MEASURE\_LINE\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md) |
| Internal name | {437DD946-6A36-46A3-A399-FC0E151B5ADF} |
