# PUT\_ATR\_E
<!-- id: poner-atr-r -->
<!-- origen: 5f5208fd4b3c69cab67f2f84d119814f30657ce8 -->

Add the active codes to entities forming the boundaries of enclosures selected in the temporary topology.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Reverse sorting (0/1). The command does not use this parameter | Yes |

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends, and **Flooding/Add active codes** is disabled.

Moving the cursor highlights the enclosure containing it:

* Press the data button inside an enclosure to select it. The previous selection is discarded.
* Hold Ctrl while pressing the data button to add or remove an enclosure from the selection.
* Press the snap button to replace the last selected enclosure with the next enclosure containing the point that is not already selected. If no other unselected enclosure contains the point, the last enclosure is removed from the selection and the command sounds the error tone.
* Press the reset button to deselect all enclosures.
* Press Esc to cancel the command.

Press the spacebar to accept the selection. The command adds the active codes to each entity on the exterior boundaries of the selected enclosures.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Flooding/Add active codes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [ADD\_ACTIVE\_CODES\_AND\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[DELETE\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[PUT\_COD\_ENCLOSURE\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) |
| Internal name | {1508551C-4306-4DAA-9ED6-C6BA81C7209C} |
