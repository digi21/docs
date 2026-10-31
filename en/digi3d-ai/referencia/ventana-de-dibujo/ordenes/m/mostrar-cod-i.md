# SHOW\_COD\_F
<!-- id: mostrar-cod-i -->
<!-- origen: 2b387887ca7f416a9cec55be96ebb7845dc7d269 -->

Display all codes of the segments forming a topological enclosure by flooding.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends.

1. Click inside an enclosure to fill it with color. Hold Control to select multiple enclosures.
2. Press the spacebar. The command writes the codes of each boundary segment next to its center.

Press Escape to clear the codes and end the command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DELETE\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md) |
| Internal name | {53B84A11-7AE0-4a96-90C7-A0901AE59CFD} |
