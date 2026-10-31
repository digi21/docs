# DELETE\_COD\_E
<!-- id: borra-cod-r -->
<!-- origen: 2e4110834adb6144ee299b25adb6a221f132a119 -->

Delete a code (attribute) from entities forming the boundaries of selected enclosures in the temporary topology.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Attribute | Code to delete | Yes |

If the parameter is omitted, the command displays a dialog box to choose the code.

### Notes

This is a flooding command: it acts on enclosures you click and requires a topology for flooding loaded in memory. Before running it, generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it if you modify drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds an error tone, and ends without requesting the code, and **Flooding/Delete code...** is disabled.

When run, the command prompts you to select the entities' code \(attribute\). After choosing it, click inside enclosures to select and highlight them:

* Press the data button inside an enclosure to select it. The previous selection is discarded.
* Hold Ctrl while pressing the data button to add the enclosure to or remove it from the selection.
* Press the snap button to replace the last selected enclosure with the next enclosure containing the cursor position that is not already selected. If no unselected enclosure contains the cursor position, the command removes the last enclosure from the selection and sounds an error tone.
* Press the reset button to deselect all enclosures.
* Press Esc to cancel the command.

Press the spacebar to accept the selection. The command iterates over entities on the selected enclosures' exterior boundaries. If an entity has only the specified code, it is deleted. If an exterior boundary entity has the specified code and other codes, the command removes the specified code and retains the entity with its remaining codes. Entities without the specified code are unchanged.

You can also run the command by specifying the code on the command line.

### Example

`DELETE_COD_E=3`

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Delete code... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [ADD\_ACTIVE\_CODES\_AND\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[DELETE\_ENCLOSURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[SHOW\_COD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md)<br>[PUT\_ATR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md)<br>[PUT\_COD\_ENCLOSURE\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) |
| Internal name | {998553CF-11D7-449b-9324-C94446D48CBA} |
