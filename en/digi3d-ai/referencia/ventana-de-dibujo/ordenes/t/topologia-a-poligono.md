# TOPOLOGY\_FROM\_POLYGON
<!-- id: topologia-a-poligono -->
<!-- origen: b841a5ed47dae649fb7d33003aad71f27b79860d -->

Generate polygons from the topology specified as a parameter.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name. Enclose it in quotes if it contains spaces | No |

## Notes

The topology must be loaded; otherwise, the command sounds the error tone and does nothing.

The command creates a polygon with its holes for each valid enclosure in the topology with an associated centroid. Enclosures without centroids generate no polygon.

- If the topology is defined in the code table, its definition determines the polygon code, and Z is assigned according to the Z type configured in the topology or centroid. Enclosures whose centroid has the hole centroid text generate no polygon.
- If the topology is not defined in the code table, the polygon takes the centroid codes.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Transform into polygon/All topologies<br>Topology/Transform into polygon/(one option per loaded topology) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[EXPORT\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-topologia.md) |
| Internal name | {570042CB-FBD3-44E2-8B8B-C468012CED69} |
