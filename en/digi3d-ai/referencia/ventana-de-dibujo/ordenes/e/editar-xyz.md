# EDIT\_XYZ
<!-- id: editar-xyz -->
<!-- origen: d4fcb255bec6ec14cbeb2a1bb17d8701476b8f70 -->

Modify the three-dimensional \(X, Y, Z\) position of element vertices.

## Parameters

Does not accept parameters.

## Notes

Work as with [EDIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md), but pressing the data button assigns all three cursor coordinates X, Y, and Z to the vertex.

* Press + to advance to the next vertex.
* Press - to return to the previous vertex.
* Press \* to move the vertex so its adjoining segments form a right angle.
* Press Insert to add a vertex at the normal cursor position.
* Press Delete to remove the vertex at the editing cursor.
* Press S to toggle tracking: the vertex follows the cursor until the data button is pressed. Disabling tracking with S restores its position before tracking was enabled.
* Press Z to enter a Z value in the status bar and assign it without changing vertex X or Y.
* Press Space \(the spacebar\) to accept changes.
* Press Esc to cancel.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Edit vertices on XYZ |
| Toolbar | Edit polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [EDIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md)<br>[EDIT\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md)<br>[EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editor.md) |
| Internal name | {434E3B43-FC90-477f-B819-7552284150B6} |
