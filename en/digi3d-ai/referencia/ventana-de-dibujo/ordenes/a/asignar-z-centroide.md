# ASSIGN\_CENTROID\_Z
<!-- id: asignar-z-centroide -->
<!-- origen: 9e8cdb19e3b031f84b37da3267d1ce7a2eb916ff -->

Assign the centroid Z coordinate to the lines forming each polygon in the specified topologies.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Names of the topologies to include | One or more loaded topology names, separated by spaces | Yes |

## Notes

The command requires at least one loaded topology. If none is loaded, it displays an error message and finishes. It displays a warning for each name that does not match a loaded topology. If no name is supplied, it uses all loaded topologies. The menu option runs the command once for each loaded topology.

For each polygon with a centroid in a topology of the active drawing file, the command assigns the centroid Z coordinate to every vertex of the lines forming the outer boundary. It does not modify hole boundaries.

The command handles each entity independently: if Digi3D.AI rejects a modified line, the original line is retained. Entities accepted by Digi3D.AI are modified.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Assign the Z of the centroid to the lines forming the polygon/All topologies |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {CCEC81C6-855C-4BE7-AE8A-B29C4BB0023F} |
