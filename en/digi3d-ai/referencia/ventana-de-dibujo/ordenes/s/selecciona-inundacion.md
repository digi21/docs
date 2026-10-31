# SELECT\_FLOOD
<!-- id: selecciona-inundacion -->
<!-- origen: 6718f22651592a0a30d1a9e68ae32ab9181ff3c2 -->

Send entities forming the selected enclosure's boundary to the active command.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate it with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines.

A command accepting multiple selection must already be running; otherwise, this command displays "No command is being run that admits multiple selection.", sounds the error tone, and ends. If one is running but no topology for flooding exists, it displays "No temporary topology is created", sounds the error tone, and ends. In both cases, **Immediate/Select by flooding** is disabled.

1. Press the data button inside an enclosure to select it. Hold `Ctrl` to add or remove enclosures from the selection.
2. Press the snap button to replace the last selected enclosure with the next unselected enclosure containing the point. If no other unselected enclosure contains the point, the last enclosure is removed and the command sounds the error tone.
3. Press the spacebar to send entities on the selected enclosures' exterior boundaries to the active command.

The reset button clears the enclosure selection. `Esc` ends the command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select by flooding |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {6B5E76DA-9197-42C8-B940-E28A594E123A} |
