# GENERALIZE\_TOPOLOGY
<!-- id: generalizar-topologia -->
<!-- origen: 963b2c85ee7427d8f74de660ff30b064efcd25f6 -->

Delete centroids and lines to merge neighboring polygons whose centroids have the same text and codes in the topology specified as a parameter.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | No |

## Notes

The topology must be loaded. If no topology is loaded, the command displays the warning "No topology loaded". If you omit the parameter or the specified topology is not loaded, the error sound plays.

Two neighboring polygons are merged when their centroids have the same text and codes. The command deletes the lines shared by the two polygons and one of their centroids.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Generalize topology/All topologies<br>Topology/Generalize topology/\(one option per loaded topology\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_NEIGHBOR\_POLYGONS\_SAME\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-poligonos-vecinos-mismo-centroide.md) |
| Internal name | {19B35B1D-F4BB-4F3E-B2C8-A0E281A82577} |
