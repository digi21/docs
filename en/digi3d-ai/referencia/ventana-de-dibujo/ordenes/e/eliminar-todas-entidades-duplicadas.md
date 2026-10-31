# DELETE\_ALL\_DUPLICATE\_ENTITIES
<!-- id: eliminar-todas-entidades-duplicadas -->
<!-- origen: 6cc666564066bba9955531611b4862d5f4e492f1 -->

Delete all duplicate entities, by code.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Code or codes of the entities to process | Yes |

## Notes

Two entities are duplicates when they are of the same type, have the same number of vertices, and their vertices match in X,Y, in the same or reverse order. Z is not compared. Only undeleted, visible entities within the area of interest are analyzed.

Without parameters, the command prompts you to select the entities to analyze. It deletes all entities in each group of duplicates, retaining none.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {9CF1C8A8-380D-47F4-93C7-E81310BD05D2} |
