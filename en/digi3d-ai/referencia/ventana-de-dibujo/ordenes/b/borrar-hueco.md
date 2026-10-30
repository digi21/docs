# DELETE\_HOLE
<!-- id: borrar-hueco -->
<!-- origen: c62a027fe425c88c7d215690ec23cf3297f84db5 -->

Delete a hole from a polygon.

## Parameters

Does not accept parameters.

## Notes

Select a vertex of the hole you want to delete with the cursor. The command accepts only polygons from the active drawing file; any other entity triggers the error sound. If the selected vertex belongs to the polygon's outer boundary, the command displays the warning "This command does not allow the exterior limit of a polygon to be deleted." and prompts for another vertex. The original polygon is deleted and a copy without the hole is added.

If quality control rejects the modified entity, the original entity is preserved unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polygons/Delete polygon hole |
| Toolbar | Polygons |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [INSERT\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insertar-hueco.md) |
| Internal name | {8AB62341-E643-4188-9925-D81B17AB56BA} |
