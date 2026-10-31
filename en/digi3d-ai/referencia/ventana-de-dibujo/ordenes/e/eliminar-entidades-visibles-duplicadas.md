# DELETE\_DUPLICATE\_VISIBLE\_ENTITIES
<!-- id: eliminar-entidades-visibles-duplicadas -->
<!-- origen: b3059326560826966c0020aa7b2e0cb15ed09bf1 -->

Delete visible duplicate entities, retaining only the one with a code appearing earlier in the code table.

## Parameters

Does not accept parameters.

## Notes

Two entities are duplicates when they are of the same type, have the same number of vertices, and their vertices match in X,Y, in the same or reverse order. Z is not compared. The command analyzes undeleted, visible entities within the area of interest with at least one visible code from the code table. From each group of duplicate entities, it retains the one with the code appearing earliest in the code table and deletes the others.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Delete duplicate entities/Visible entities |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {23B801A3-E5D4-456A-BC22-93E348B4FB3B} |
