# DRAW\_E
<!-- id: dibuja-r -->
<!-- origen: 35ffe00d28679a5c6bbb414fe9ee9000e0bb85b2 -->

Draw topological enclosures from a loaded topology.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

If no topology is loaded, the command displays an error message and ends.

The command traverses enclosures of all loaded topologies. For each enclosure whose centroid bears any specified code, it adds a line to the drawing file with the enclosure's exterior boundary and the active code.

If no code is supplied, the command displays a dialog box for selecting codes.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DRAW\_E\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r-i.md) |
| Internal name | {80F52B47-ED1A-4285-B11C-BED8832B1903} |
