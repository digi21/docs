# DELETE\_VERTEX
<!-- id: borra-vertice -->
<!-- origen: 328b8bfcec39a81a15854e103941a408e5ccfc2b -->

Delete a vertex from a linear entity.

## Parameters

Does not accept parameters.

## Notes

Use the cursor to select the vertex to delete. The command only accepts lines and polygons from the active drawing file; any other entity causes an error tone. The original entity is deleted, and a copy without the vertex is added.

If quality control rejects the modified entity, the original entity is preserved unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Delete a vertex from a polyline |
| Toolbar | Edit polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [INSERT\_VERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/inserta-vertice.md)<br>[MODIFYVERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/modifica-vertice.md) |
| Internal name | {64578689-B118-4fe5-86C9-52897DADCA6E} |
