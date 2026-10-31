# TRIANGULATE\_TOPOLOGY\_POINTS\_EXCEPT
<!-- id: triangular-puntos-topologia-excepto -->
<!-- origen: 90c5855ae862677c56df5fabb4fb987d35ce7343 -->

Calculate a triangulation from a topology's lines, excluding lines bearing specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | No |
| 2...n | Code or codes to exclude (one or more) | No |

## Notes

Take lines forming valid enclosures of the topology, discard those bearing any excluded code, calculate the triangulation, and load it as a new DTM drawing file named "Triangulation created at hh:mm:ss".

Display a warning and end if fewer than two parameters are supplied, no topology is loaded, or the specified topology cannot be found.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [TRIANGULATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md)<br>[TRIANGULATE\_LINES\_EXCEPT\_POINTS\_WITH\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md) |
| Internal name | {2D568E97-B495-4663-9472-F9FE9823AF96} |
