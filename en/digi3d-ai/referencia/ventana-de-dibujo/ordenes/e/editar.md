# EDIT
<!-- id: editar -->
<!-- origen: fe5799f42a8ca08342ca70b533e110d961c26646 -->

Modify the plan \(X, Y\) position of element vertices.

## Parameters

Does not accept parameters.

## Notes

Select a line or polygon in the current model. Place the editing cursor at the vertex nearest the selection point. Each data button press assigns cursor X and Y to the vertex, retaining its Z. If *Automatic displacement* is enabled in command configuration (default), advance the editing cursor to the next vertex in the last movement direction.

Move along the entity and modify it with these keys:

* Press + to advance to the next vertex.
* Press - to return to the previous vertex.
* Press \* to move the vertex so its adjoining segments form a right angle.
* Press Insert to add a vertex at the normal cursor position.
* Press Delete to remove the vertex at the editing cursor. A sole remaining vertex is not deleted.
* Press S to toggle tracking: the vertex follows the cursor until the data button is pressed. Disabling tracking with S restores its position before tracking was enabled.
* Press Space \(the spacebar\) to accept changes.
* Press Esc to cancel.

If quality control rejects the modified entity, retain its original unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Edit vertices on XY |
| Toolbar | Edit polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [EDIT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md)<br>[EDIT\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md) |
| Internal name | {50C7F83A-9C55-44c7-A975-77107E12CF1A} |
