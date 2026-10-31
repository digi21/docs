# INSERT\_VERTEX
<!-- id: inserta-vertice -->
<!-- origen: 3820f8bc439d03096b6d0e07326d9d532289a87e -->

Insert a vertex into a line or polygon.

## Parameters

Does not accept parameters.

## Notes

Select the entity and accept the selection to attach the cursor; the application then prompts you to place the new vertex. The vertex is inserted in the selected segment, between its two vertices. Only entities in the current model can be selected.

If quality control rejects the modified entity, the original entity is preserved unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Insert a vertex to a polyline |
| Toolbar | Edit polyline |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DELETE\_VERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-vertice.md)<br>[DENSIFICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/densifica.md)<br>[MODIFYVERTEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/modifica-vertice.md) |
| Internal name | {5BDF6E2F-150B-4b6f-8EB2-311C42E3AECF} |
