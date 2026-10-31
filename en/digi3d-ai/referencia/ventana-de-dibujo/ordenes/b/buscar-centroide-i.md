# SEARCH\_CENTROID\_F
<!-- id: buscar-centroide-i -->
<!-- origen: ec4c6db1f7299e3bcb87ae6210656156e2e229c9 -->

Find the centroid of the topological polygon being worked on, by flooding.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on the enclosure you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends, and **Flooding/Search for centroid** is disabled.

1. Press the data button inside the enclosure. As you move the cursor, the command highlights only enclosures with centroids.
2. Press the spacebar to accept. The command centers the view on the enclosure centroid and ends. If the enclosure has no centroid, the error tone sounds and the view does not move.

Press the reset button to deselect the enclosure and Esc to cancel the command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Search for centroid |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SEARCH\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md)<br>[COPY\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md) |
| Internal name | {A3432E6A-E83F-4BB5-B9D2-6EF8B2007F35} |
