# DETECT\_NO\_CONNECTED\_LINES\_3D
<!-- id: detectar-lineas-no-conectadas-3d -->
<!-- origen: 72c0dd59289e9805b586a804715763368d39bea7 -->

Create an error task for each line end that does not share the same X, Y, and Z as the end of another line with one of the specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | One or more codes, separated by spaces | Yes |

## Notes

The command scans visible lines within the area of interest that have one of the specified codes. For each end, it checks whether its X, Y, and Z match the end of another of these lines. Each unconnected end generates an error task.

Codes are matched exactly. To include all codes with a given tag, prefix the tag name with a hash sign \(\#\).

Without codes, the command waits for you to select a set of entities using multiple selection, then analyzes the selected lines. In this case, end comparisons also consider X, Y, and Z.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_NO\_CONNECTED\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar_lineas_no_conectadas.md)<br>[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md)<br>[DETECT\_NO\_CONNECTED\_VISIBLE\_LINES\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas-3d.md) |
| Internal name | {0B9D50BF-D49C-49AA-954D-FF8590E5AFA4} |
