# CLOSE\_ENT
<!-- id: cierra-ent -->
<!-- origen: b66b75ba4b89598aa2829d07be47d17523b4238e -->

Close the line you are drawing and finish digitizing it.

## Parameters

Does not accept parameters.

## Notes

This command acts on the running [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) or [SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md) command. If the line is not already closed, CLOSE\_ENT adds a vertex with the same coordinates as the first vertex. The running LINE or SPLINE command finishes the line.

With SPLINE, the line must have at least three points; otherwise, the command plays an error sound and the line is not closed. If neither command is running, CLOSE\_ENT plays an error sound.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Close the line being drawn |
| Toolbar | End of the polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CLOSE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra.md)<br>[FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)<br>[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md) |
| Internal name | {5910086A-4CA0-45d7-BF4B-4F3878E9AF30} |
