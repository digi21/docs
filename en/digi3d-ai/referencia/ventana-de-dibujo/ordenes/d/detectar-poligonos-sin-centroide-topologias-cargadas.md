# DETECT\_POLYGONS\_WITHOUT\_CENTROID\_LOADED\_TOPOLOGIES
<!-- id: detectar-poligonos-sin-centroide-topologias-cargadas -->
<!-- origen: 08f32d428c04cb8e82076ecb380360e8617f639e -->

Form a topology from all enclosures of loaded topologies and mark resulting polygons without centroids as errors.

## Parameters

Does not accept parameters.

## Notes

Combine arcs and centroids from all loaded topologies, across all drawing files, into a new topology. For each enclosure without a centroid, add a "Polygon without associated centroid" task to the [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md) at an interior point, without specifying a file.

If any enclosure without a centroid is found, sound the error tone. If none are found, display no message.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Detect polygons without centroid in loaded topologies |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_CENTROIDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-centroides.md) |
| Internal name | {A502D54C-566B-40CC-8090-7C4F7619B8A0} |
