# DELETE\_E
<!-- id: borra-e -->
<!-- origen: b0a28dd3a270a801f4e3de9801d9c6674c044b4e -->

Delete the specified graphical entities and texts from the drawing.

## Parameters

Does not accept parameters.

## Notes

Use the cursor to select the elements to delete from the file.

Each run deletes one entity selected with the cursor, or all entities in a multiple selection. If the entity selected with the cursor does not belong to the active drawing file, an error tone sounds, and it is not deleted.

This command hides selected elements by inserting a deletion flag in their file records. Until you compress the drawing file, you can:

* Show elements marked as deleted on screen again with [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md).
* Recover elements marked as deleted by removing the deletion flag with [RECOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Delete selected entities |
| Toolbar | Delete and recover |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DELETE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod.md)<br>[DELETE\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md)<br>[DELETE\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-v.md)<br>[RECOVER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recupera.md) |
| Internal name | {3FD502AE-2105-47b0-B9F1-51BE04B73DB1} |
