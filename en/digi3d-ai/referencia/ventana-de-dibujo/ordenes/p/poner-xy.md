# PUT\_XY
<!-- id: poner-xy -->
<!-- origen: 33fb0f631328af072b88b69fe526507c651baa4b -->

Place two numeric texts with the X and Y coordinates of a selected point.

## Parameters

Does not accept parameters.

## Notes

Use this command to label coordinates of grid crosses in a drawing file.

Preview both texts at the cursor and store them when recording a point:

* Place `Y=<valor>` offset in X from the point by the [active distance](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md), with the [active angle](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) rotation.
* Place `X=<valor>` offset in Y by the active distance, with the active angle plus 90º.

Both texts use height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and decimal places [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md). Store them with the active code.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Define height/Text with X and Y coordinates of a point |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [PUT\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-altura.md)<br>[PUT\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-distancia.md) |
| Internal name | {E3808668-1118-4353-85B8-BEA3F4299DA1} |
