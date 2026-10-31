# PUT\_COD\_ENCLOSURE\_CENTROID
<!-- id: poner-cod-recinto-centroide -->
<!-- origen: 26e27b9877e4c4be6d854416a6831654eec7b0cd -->

Add the enclosure code to entities forming the boundaries of selected topological enclosures and insert text with the centroid code at the enclosure centroid.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Enclosure code | Code added to boundary entities | No |
| 2 | Centroid code | Code of the text inserted at the centroid | No |

## Notes

If parameters are missing, the command displays "Missing parameters" and ends.

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. If parameters are complete but no topology for flooding exists, the command displays "No temporary topology is created", sounds the error tone, and ends.

When it runs, the command sets the centroid code as the active code.

Select enclosures as with [PUT\_ATR\_E](poner-atr-r.md): press the data button to select an enclosure; hold Ctrl while pressing the data button to add or remove enclosures; press the snap button to replace the last selected enclosure with the next unselected enclosure containing the point (if no other unselected enclosure contains the point, the last enclosure is removed and the error tone sounds); press the reset button to deselect all enclosures, and press Esc to cancel. Press the spacebar to accept the selection.

On acceptance, the command adds the enclosure code to each entity on the exterior boundaries of the selected enclosures and inserts text at the centroid of the first selected enclosure. The text content and code are the centroid code, with height, justification, and rotation from [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ADD\_ACTIVE\_CODES\_AND\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[DELETE\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[PUT\_ATR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md) |
| Internal name | {62ECF8AD-EEFD-409D-A358-C1E7C5928950} |
