# DETECT\_ENCLOSURES\_WITHOUT\_NEIGHBORS
<!-- id: detectar-recintos-sin-vecinos -->
<!-- origen: fa6688513d7e2eb844aefeaff0afbdef652c9b72 -->

Analyze the topological enclosures in all loaded topologies and mark as errors the sections belonging to only one enclosure, except sections with any of the specified boundary codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 and subsequent | Boundary codes | Yes |

## Notes

The command requires at least two loaded topologies. With fewer, it displays an error message and finishes.

If you do not specify boundary codes, the command displays a dialog box for selecting them. If you select none, the command finishes.

Boundary codes support the \* and ? wildcards.

The command only considers valid topological enclosures.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Detecting topological enclosures without neighbors... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {BADFF305-9DA2-4E11-98EA-B0BD184B6111} |
