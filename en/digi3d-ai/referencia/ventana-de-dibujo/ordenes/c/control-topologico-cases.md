# TOPOLOGICAL\_CONTROL\_CASES
<!-- id: control-topologico-cases -->
<!-- origen: e80f3f48a5d2c6417ec475cd244796f252c0e2f0 -->

Detect neighboring polygons with different centroids across drawing files.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | No |
| 2 | 1 to analyze every drawing file pair; 0 to analyze only pairs involving the active drawing file | No |

## Notes

1. If parameters are missing or the topology does not exist, sound the error tone, display a warning balloon, and end.
2. For file pairs chosen by the second parameter, compare each polygon with a centroid in one file against polygons with centroids in the others. If two polygons share an edge \(two consecutive common vertices\) and have different centroids, add an error task to Tasks containing the shared edge and both centroids.
3. Compare centroids by text or codes according to topological control configuration \(text by default\).
4. If automatic clearing of Tasks is enabled, empty the pane before comparing polygons.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Topological control Drawing file <-> reference files/All topologies<br>Topology/Topological control Drawing file <-> reference files/\(one option per loaded topology\)<br>Topology/Topological control between all loaded topologies/All topologies<br>Topology/Topological control between all loaded topologies/\(one option per loaded topology\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ADJUST\_DRAWING\_FILE\_LIMITS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/ajusta-limites-archivos-dibujo.md)<br>[DETECT\_BBDD\_ATTRIBUTE\_ERRORS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-atributos-bbdd-cases.md)<br>[DETECT\_LINE\_CONTINUITY\_ERRORS\_CASES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-errores-continuidad-lineas-cases.md) |
| Internal name | {7E5473E4-E04A-4AB4-9065-E5CC463BA2A5} |
