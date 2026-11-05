# DRAW\_PERIMETER\_3D
<!-- id: dibuja-perimetro-3d -->
<!-- origen: 34ecc2818b3edaed18be504dc1f1a6b7828f75d7 -->

Calculate the perimeter in three dimensions \(3D, including elevation changes\) of a selected drawing entity and place text with this value at the specified position.

## Parameters

Does not accept parameters.

## Notes

Select the line or polygon whose perimeter to label. Selecting another entity type sounds the error tone.

After selection, the status bar shows the perimeter suffix. It is optional and defaults to `m`. Enter the desired suffix and specify the destination point for the perimeter text. Text uses angle [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

After placing the text, the command requests another entity. Press Esc to end.

For a polygon, the perimeter is its exterior boundary's perimeter: holes are excluded.

Unlike [DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md), which measures in plan, calculate the spatial length including every vertex's Z coordinate. Greater elevation changes therefore produce a larger value.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Define height/3D perimeter of selected polyline |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[MEASURE\_LINE\_XYZ\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md) |
| Internal name | {6C10238F-6C0F-4BD3-AFA8-251F15552F53} |
