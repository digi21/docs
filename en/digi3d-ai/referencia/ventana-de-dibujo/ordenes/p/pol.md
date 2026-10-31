# POL
<!-- id: pol -->
<!-- origen: 10b9bb0387a1dce343fe8648185b831cac62c5fd -->

Draw a polygon.

## Parameters

Does not accept parameters.

## Notes

The command records vertices like [LINE](../l/linea.md). When recording ends, it closes the line if necessary and stores a polygon with the line's codes.

The command remains active after storing the polygon: the next point starts a new polygon.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Polygon |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) — automatically close the line when it is finished<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[MAXIMUM\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/distancia_maxima.md) — maximum segment length allowed by the line command<br>[EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval<br>[FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — lock the Z coordinate to a multiple of the contour interval<br>[G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) — enable or disable generalization<br>[INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — active recording increment<br>[GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — move the stereoplotter to the snapped coordinates when snapping<br>[MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) — maximum number of points for an entity type<br>[S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) — automatically smooth the line when it is finished<br>[SNAP\_END](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-fin.md) — finish recording when a snap to another entity is accepted<br>[TYPE\_OF\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md) — how vertex Z coordinates are recorded<br>[TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) — generalization tolerance factor<br>[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) — angular generalization tolerance factor<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value |
| Related commands | [CREATE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md)<br>[FORM\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md)<br>[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[TYPE\_OF\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md) |
| Internal name | {FC52111C-097D-41B4-838B-71C7A7837BA4} |
