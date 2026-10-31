# COPY\_CENTROID\_F
<!-- id: copiar-centroide-i -->
<!-- origen: e3d3cd098de62327ad266b7b3d6572cd2f474330 -->

Copy an enclosure centroid from the temporary topology into other enclosures without centroids.

## Parameters

Does not accept parameters.

## Notes

This flooding command acts on enclosures you click and requires a topology for flooding loaded in memory. First generate that topology with [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) or [GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), and regenerate it after modifying drawing lines. Without a topology for flooding, the command displays "No temporary topology is created", sounds the error tone, and ends, and **Flooding/Copy Centroid** and **Topology/Copy Centroid** are disabled.

1. Press the data button inside an enclosure with a centroid and press the spacebar. The command takes that enclosure's centroid.
2. Press the data button inside an enclosure without a centroid and press the spacebar. The command adds a copy of the centroid at the center point calculated by the topology for that enclosure.
3. Repeat step 2 to copy the same centroid into other enclosures.
4. Press **Esc** to end the command.

If the enclosure selected in step 1 has no centroid, or the enclosure selected in step 2 already has one, the command sounds the error tone.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Copy Centroid<br>Topology/Copy Centroid |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SEARCH\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md) |
| Internal name | {415D4B3E-68C0-43C4-B8D8-D8EF42C288C6} |
