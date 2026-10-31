# DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES
<!-- id: eliminar-codigos-entidades-visibles-duplicadas -->
<!-- origen: b2c802d8078b303789e0667ec62e735d07c4fa4e -->

Remove common codes from all visible duplicate entities.

## Parameters

Does not accept parameters.

## Notes

The command analyzes undeleted, visible entities within the area of interest with at least one visible code from the code table. Two entities are considered duplicates if they are of the same type, have the same number of vertices, have vertices matching in X,Y (in the same or reverse order), and share at least one code. Z is not compared.

In each group of duplicate entities, the command removes from each entity the codes already present on an earlier entity in the group. If an entity is left without codes, the command deletes it.

If Digi3D.AI rejects any new copies, the command does not apply the change, and all original entities are preserved.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Remove duplicate codes from duplicate geometries |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {3FC43FE8-138B-46E9-85D1-C97513EF103C} |
