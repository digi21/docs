# DETECT\_NO\_CONNECTED\_LINES
<!-- id: detectar-lineas-no-conectadas -->
<!-- origen: 51331aee4a7460079026650ed41ee2d75778298c -->

Create an error task for each line end that does not share the same X and Y as the end of another line with one of the specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | One or more codes of the lines to check | Yes |

## Notes

The command scans visible lines within the area of interest that have one of the specified codes. For each end, it checks whether its X and Y match the end of another of these lines. An end connected to a line with another of the specified codes counts as connected. Each unconnected end generates an error task so you can review and correct it.

Codes are matched exactly. To include all codes with a given tag, prefix the tag name with a hash sign \(\#\).

Without codes, the command waits for you to select a set of entities using multiple selection, then analyzes the selected lines.

Use this as a topological quality control check to locate lines that should connect \(for example, segments of the same network\) but remain disconnected.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Detect unconnected lines/\(one option per tag\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_NO\_CONNECTED\_LINES\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-no-conectadas-3d.md)<br>[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md)<br>[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas-3d.md) |
| Internal name | {47D061F8-0F07-463B-B1E5-183743E5548C} |
