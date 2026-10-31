# ZOOME\_E
<!-- id: zoome-r -->
<!-- origen: b83f860ea51ad1a99d9d28c0123e27159ad84376 -->

Zoom to the extents of enclosures selected by flooding.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate it with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends, and **Zooms/Zoom to extension of site (due to flooding)** is disabled.

1. Press the data button inside an enclosure to select it. Hold Control to add or remove enclosures from the selection.
2. Press the reset button to clear the selection.
3. Press the spacebar to accept.

The command fits the view to the window enclosing entities on the selected enclosures' exterior boundaries and ends. Press Escape to cancel.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Zooms/Zoom to extension of site (due to flooding) |
| Toolbar | Zooms |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md) |
| Internal name | {8E5DA4E4-9A06-43a8-A94A-4EFD9A16BCB7} |
