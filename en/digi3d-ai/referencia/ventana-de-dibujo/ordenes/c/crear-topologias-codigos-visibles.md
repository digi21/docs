# CREATE\_TOPOLOGIES\_VISIBLE\_CODES
<!-- id: crear-topologias-codigos-visibles -->
<!-- origen: b4cb9dc5a1d9b09b3ad6cd002f98ff46cea62abc -->

Create topologies from codes visible in the drawing window.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | Yes. If omitted, use the default name from the command configuration |

## Notes

The command builds the topology from lines and texts in the active drawing file whose codes are visible, and associates it with that file. Texts act as centroids.

Depending on command configuration, the program adds polygons without area, duplicate centroids, lines with a single point, and lines with duplicate points to the Tasks pane, and writes the number of arcs, polygons, holes, and errors in the Results window. If automatic clearing of the Tasks pane is enabled, the command empties it before analyzing entities.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Create topology with visible codes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[LEAVE\_TOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar-top.md) |
| Internal name | {4E7B099C-8D5C-4B36-A897-F835B2A45324} |
