# CHNG\_COD\_E
<!-- id: camb-cod-r -->
<!-- origen: cb7209633dd213604f3de3ac171379d7b73a56c6 -->

Change codes by topological enclosure.

## Parameters

Does not accept parameters.

## Notes

This is a flooding command: it acts on enclosures you click and requires a topology for flooding loaded in memory. Before running it, generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it if you modify drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds an error tone, and ends, and **Flooding/Change codes** is disabled.

1. Press the data button inside an enclosure to select it. Hold Control to add enclosures to or remove them from the selection.
2. Press the snap button to replace the last selected enclosure with the next enclosure containing the cursor that is not already selected. If no unselected enclosure contains the cursor, the command removes the last enclosure from the selection and sounds an error tone. With no enclosure selected, the snap button acts like the data button. Press the reset button to clear the selection.
3. Press the spacebar to apply the change. The command ends after applying it. Press Escape to cancel.

The command changes entities forming the selected enclosures' exterior boundaries:

1. The command collects codes to change. It takes the code of each entity with a single code. For an entity with multiple codes, it takes none if any is already among the collected codes; if none is, it displays [Select code](camb-cod.md), titled **Select the code to change**, for you to choose one.
2. On each entity, it replaces all collected codes with the first active code. If several match, the entity receives a single active code in their place.

Click **Cancel** in **Select code** to end the command without changing any entities.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Change codes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DELETE\_ENCLOSURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[RENAMCOD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md) |
| Internal name | {2D62711E-182D-43e9-BA19-4DFC7CE81D11} |
