# GROUP\_TOGETHER\_DUPLICATE\_ENTITIES
<!-- id: agrupar-entidades-duplicadas -->
<!-- origen: 5f166f7d0643318654a1685508c936211469e9d3 -->

Group all duplicate entities into a single entity per code.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | One or more codes, separated by spaces | Yes |

## Notes

Two entities are duplicates if they are of the same type (line, point, or text), have the same number of vertices, and have the same X and Y coordinates at each vertex, in the same or reverse order. The command does not compare Z. It only analyzes visible entities within the area of interest.

For each group of duplicate entities, the command deletes all entities in the group and adds a copy of one of them with all their codes. If the registry settings do not allow entities with repeated codes, repeated codes are added only once.

* With codes as parameters, the command is immediate: it analyzes entities in the drawing file with any of those codes visible. The entity retained is the one with the code appearing earliest in the parameter list.
* Without parameters, the command is interactive: it prompts for a [multiple selection](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) and analyzes the selected entities. The entity retained is the first in the group.

If quality control rejects the grouped entity for a group of duplicates, that group's duplicate entities are preserved. Other groups are grouped normally.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters; [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GROUPS\_TOGETHER\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrupar-entidades-visibles-duplicadas.md)<br>[DETECT\_DUPLICATES\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-duplicadas.md)<br>[DETECT\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-entidades-visibles-duplicadas.md)<br>[DELETE\_CODES\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-codigos-entidades-visibles-duplicadas.md)<br>[DELETE\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-duplicadas.md)<br>[DELETE\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-entidades-visibles-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-duplicadas.md)<br>[DELETE\_ALL\_DUPLICATE\_VISIBLE\_ENTITIES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/eliminar-todas-entidades-visibles-duplicadas.md) |
| Internal name | {46E40887-D59E-4E9A-8314-BD1A49EA241A} |
