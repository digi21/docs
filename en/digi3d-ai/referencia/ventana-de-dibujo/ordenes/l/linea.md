# LINE
<!-- id: linea -->
<!-- origen: 6b48f9eb06083957c08b1758c93ea01d728c77da -->

Draw a line in the current file.

## Parameters

Does not accept parameters. The following variables affect line recording:

| Variable | Definition |
| :--- | :--- |
| [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) | Distance between consecutive points. Set it in the New project dialog box or with _INC_ |
| [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) |
| [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) |

While drawing a line, snap it to an existing digitized entity with the Snap pedal/button. Select the snap mode with [SMODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md).

You can use other digitizing commands while drawing lines.

## Notes

To draw a line, select a code defined for a linear entity and press Data; you do not need to run this command.

The command prompts for points until you press the end-of-entity pedal/button \(or run [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)\). It then stores the line and finishes. Esc cancels the command only if no points have been recorded yet; with a line in progress, Esc has no effect.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Polyline |
| Toolbar | Polylines |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) — automatically close the line when it is finished<br>[AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance<br>[MAXIMUM\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/distancia_maxima.md) — maximum segment length allowed by the line command<br>[EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval<br>[FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — lock the Z coordinate to a multiple of the contour interval<br>[G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) — enable or disable generalization<br>[INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — active recording increment<br>[GOTO\_START](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir-principio.md) — where the photogrammetric window moves when a line is finished<br>[GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — move the stereoplotter to the snapped coordinates when snapping<br>[MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) — maximum number of points for an entity type<br>[P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) — automatically draw a parallel when the entity is finished<br>[S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) — automatically smooth the line when it is finished<br>[SNAP\_END](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-fin.md) — finish recording when a snap to another entity is accepted<br>[TYPE\_OF\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md) — how vertex Z coordinates are recorded<br>[TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) — generalization tolerance factor<br>[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) — angular generalization tolerance factor<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value |
| Related commands | [TANGENT\_ARC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/arco-tangente.md)<br>[CLOSE\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md)<br>[CONTINUE\_LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/continuar-linea.md)<br>[FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)<br>[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md)<br>[SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md)<br>[TYPE\_OF\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md)<br>[L](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md)<br>[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)<br>[XYLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xylinea.md)<br>[XYZLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xyzlinea.md) |
| Internal name | {57BADF4C-82D5-4522-8C91-327C628327AC} |
