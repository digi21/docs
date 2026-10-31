# DRAW\_E\_F
<!-- id: dibuja-r-i -->
<!-- origen: 55fb55efacced95d6554ecaeb9c2aff56aeb5c1b -->

Draw topological enclosures by flooding.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends, and **Flooding/Generate polygon** is disabled.

1. Press the recording pedal inside an enclosure to select it. Hold Ctrl to add or remove enclosures from the selection.
2. Press the snap pedal to replace the last selected enclosure with the next unselected enclosure containing the point. If there is none, the last enclosure is removed from the selection and the command sounds the error tone.
3. Press the spacebar to create a polygon, including its holes, from the boundaries of the selected enclosures. The polygon is created with the active code, and the command ends.

Press Esc to end without creating anything.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Generate polygon |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DRAW\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r.md) |
| Internal name | {1C2857ED-88C7-4F91-B4CC-10C65F7613EB} |
