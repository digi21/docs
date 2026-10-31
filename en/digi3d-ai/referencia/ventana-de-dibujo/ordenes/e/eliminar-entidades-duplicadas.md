# DELETE\_DUPLICATE\_ENTITIES
<!-- id: eliminar-entidades-duplicadas -->
<!-- origen: 752b721074cf5a5fa62ac9efadff4adc96d540a4 -->

Delete duplicate entities with the specified codes, retaining the entity whose code appears first in the parameter list.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Code or codes of the entities to process | Yes |

## Notes

Two entities are duplicates when they are of the same type, have the same number of vertices, and their vertices match in X,Y, in the same or reverse order. Z is not compared. Only undeleted, visible entities within the area of interest are analyzed.

* With parameters, the command analyzes entities with any of the specified codes visible. From each group of duplicate entities, it retains the entity with the code appearing earliest in the parameter list and deletes the others.
* Without parameters, the command prompts you to select the entities to analyze. From each group of duplicate entities, it retains one and deletes the others.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUP\_TOGETHER\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-duplicadas.md)<br>[GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {E86EFDA5-68D1-4A6A-A7E0-AC7C39D9483D} |
