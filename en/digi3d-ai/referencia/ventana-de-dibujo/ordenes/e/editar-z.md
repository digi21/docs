# EDIT\_Z
<!-- id: editar-z -->
<!-- origen: 4c532aa19c3a57c532c32af8168bac92efa6a239 -->

Modify the Z coordinate of the selected entity.

## Parameters

Does not accept parameters.

## Notes

Select a line or polygon in the current model. Work as with [EDIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md), but pressing the data button assigns only the cursor Z to the vertex, retaining its X and Y. Set cursor Z with [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) or stereoplotter input.

* Press + to advance to the next vertex.
* Press - to return to the previous vertex.
* Press Insert to add a vertex at the normal cursor position.
* Press Delete to remove the vertex at the editing cursor.
* Press Z to enter a Z value in the status bar and assign it to the vertex.
* Press Space \(the spacebar\) to accept changes.
* Press Esc to cancel.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Edit vertices on Z |
| Toolbar | Edit polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [EDIT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md)<br>[EDIT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md) |
| Internal name | {FD6B1A6F-3CF1-4460-8A6F-011C17C5CA51} |
