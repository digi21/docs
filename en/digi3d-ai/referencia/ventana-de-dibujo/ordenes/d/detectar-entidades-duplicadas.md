# DETECT\_DUPLICATES\_ENTITIES
<!-- id: detectar-entidades-duplicadas -->
<!-- origen: 4a7e167cc1fd53b555549cf105c7e999345ace2c -->

Detect duplicate entities among those with any of the specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | One or more codes, separated by spaces | Yes |

## Notes

The command searches for duplicates among visible entities within the area of interest that have any of the specified codes, and creates an error task for each duplicate entity. Each code is matched exactly. To include all codes assigned a tag, prefix the tag name with a number sign \(\#\).

If you do not specify any codes, the command waits for you to select a set of entities through multiple selection, then analyzes the selected entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {7434C948-43E6-4DBF-B46F-4ECD9307A869} |
