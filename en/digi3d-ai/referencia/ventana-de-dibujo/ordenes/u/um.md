# MU
<!-- id: um -->
<!-- origen: a0916f1ce6b3abb5eb8b6c62dd3a9ffb33a8dbba -->

Delete the most recent points of the entity being recorded when you run the command.

## Parameters

Does not accept parameters.

## Notes

Select the segment up to which you want to delete digitized points. After deleting them, the application continues running the digitizing command.

The command works only when [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) is active. Otherwise, it plays an error sound and finishes.

This command has an effect only before the entity is finished. It is similar to [L](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md), but _MU_ can delete several points at once.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Delete a segment of the line being drawn/Multiple segments (1 point) |
| Toolbar | End of the polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [L](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md)<br>[U2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u2.md) |
| Internal name | {395EB869-DC3F-450e-8271-913F96FE9F2F} |
