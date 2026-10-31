# FIN\_ENT
<!-- id: fin-ent -->
<!-- origen: 6cd4d01856ec7d7a3a90ab7c760fc15b6d1e81d9 -->

Finish the line being drawn.

## Parameters

Does not accept parameters.

## Notes

The command acts on the active drawing command, which must support being finished. [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md), POL, SPLINE, TRIM\_M, SELECT\_POLYGON, SELECT\_INSIDE\_POLYGON, and SELECT\_OUTSIDE\_POLYGON support this. If no command is active, or the active command does not support being finished, the error sound plays and nothing else happens.

With LINE:

* If the line has only one point, it is not stored and LINE finishes.
* If it has two or more points, it is smoothed if [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) is enabled, generalized if [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) is enabled, and closed if [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) is enabled, before being stored. Duplicate points are then removed.
* If [P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) is enabled, a parallel copy is also stored at the distance specified by [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md).
* LINE remains active with the same code, so the next point starts a new line.

Use [CLOSE\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md) to finish and close the line.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Finish the line being drawn |
| Toolbar | End of the polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CLOSE\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md)<br>[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) |
| Internal name | {A72F081C-713C-4cc4-B266-9C0772843DA1} |
