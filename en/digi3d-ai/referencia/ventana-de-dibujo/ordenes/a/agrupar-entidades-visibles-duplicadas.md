# GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES
<!-- id: agrupar-entidades-visibles-duplicadas -->
<!-- origen: aece5631593205532d34f260c061d379b09e9aad -->

Group all visible duplicate entities into a single entity.

## Parameters

Does not accept parameters.

## Notes

Two entities are duplicates if they are of the same type (line, point, or text), have the same number of vertices, and have the same X and Y coordinates at each vertex, in the same or reverse order. The command does not compare Z. It only analyzes visible entities in the drawing file within the area of interest.

For each group of duplicate entities, the command deletes all entities in the group and adds a copy of the first with all their codes. If the registry settings do not allow entities with repeated codes, repeated codes are added only once.

If quality control rejects the grouped entity for a group of duplicates, that group's duplicate entities are preserved. Other groups are grouped normally.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Group together duplicate entities/Visible entities |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {BC6A3076-B9F0-454B-9F44-80DA9C4FDCC5} |
