# DETECT\_NEIGHBOR\_POLYGONS\_SAME\_CENTROID
<!-- id: detectar-poligonos-vecinos-mismo-centroide -->
<!-- origen: 26801f2f9117306dbaa92d63c6ffdc8883a7d72e -->

Flag pairs of neighboring polygons whose centroids have the same text, codes, and attributes as errors.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | No |

## Notes

If no topology is loaded, the command displays an error message and finishes. If you omit the parameter or the topology does not exist, the command plays an error sound and finishes.

Two valid polygons in the topology are considered neighbors when they share at least one segment. The command creates an error task for each pair of neighbors whose centroids have the same text, codes, and attributes. The task marks the shared segments.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Detecting neighboring polygons with the same centroid/All topologies<br>Topology/Detecting neighboring polygons with the same centroid/\(one option per loaded topology\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [GENERALIZE\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generalizar-topologia.md) |
| Internal name | {1AB418B7-39BA-44A5-A927-83CE87D31892} |
