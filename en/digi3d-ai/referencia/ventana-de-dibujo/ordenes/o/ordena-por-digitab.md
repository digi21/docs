# ORDER\_BY\_DIGI\_TAB
<!-- id: ordena-por-digitab -->
<!-- origen: 0a77a1431bd82a4f383c2c162b82f941a852b473 -->

Reorder the entities in a file according to their order in the active code table.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | `-1` sorts in the reverse order of the code table. Any other value is ignored | Yes |

## Notes

The command operates on the active drawing file and sorts by each entity's first code.

Run `ORDER_BY_DIGI_TAB=-1` to reverse the entity order.

The command handles each entity independently: if Digi3D.AI rejects a rewritten entity, that entity's original version is preserved; entities whose rewrites are accepted are reordered.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Advanced/Order drawing file entities based on their order in code tables<br>Edit/Advanced/Order drawing file entities based on their order in code tables |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ORDER\_BY\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo.md)<br>[ARRANGE\_BY\_N\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo-n.md) |
| Internal name | {FD785D31-49D9-4f52-94B6-720E78E5FBB9} |
