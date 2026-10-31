# GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS
<!-- id: generar-topologia-inundacion-sin-islas -->
<!-- origen: 1dbd0e00a6f7fb397cbdd80cb8843e3b1f708aa1 -->

Generate the in-memory topology required by flooding commands. This topology does not account for islands or holes.

## Parameters

Does not accept parameters.

## Purpose

This is the version of [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) without islands; both commands calculate the temporary topology required by flooding commands. Click inside an enclosure, and the flooding command locates its boundary lines. The list of flooding commands, result display, when to regenerate the topology, and how to unload it are described on the [GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) page.

If you run a flooding command without generating either topology first, it displays "No temporary topology is created", sounds an error tone, and ends.

## Difference from GENERATE\_FLOOD\_TOPOLOGY

This command does not assign holes to enclosures:

* An enclosure surrounding an island includes the island's area. When selected, flooding commands act only on its exterior boundary lines, not on the island's lines.
* A point inside the island is inside both enclosures: the island and the surrounding enclosure. Pressing the data button selects the first of the two according to polygon order, and the snap button advances to the next enclosure containing the point.
* The fill flooding commands use to highlight an enclosure surrounding an island also covers the island.

## Polygon order

The command sorts enclosures by area according to **[Polygon order](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/topologias-por-inundacion/orden-de-los-poligonos.md)** in the **Flooded topologies** category of the [Configuration](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/README.md) dialog box:

* **Sort from smallest to largest area** (default): the data button selects the smallest enclosure containing the point, and each press of the snap button advances to the next enclosure by area that also contains it (from the island to its surrounding enclosure, then to successive outer enclosures).
* **Sort from largest to smallest area**: reverse the traversal, from the largest enclosure to the smallest.

This option only affects this command. It applies the next time the topology is generated.

## How enclosures are formed

* The command forms enclosures only from visible lines in the active drawing file: lines with visible codes and, if unknown codes are visible, lines with codes not in the code table. Lines with all codes hidden do not form enclosures.
* Points, texts, and other entities that are not lines do not form enclosures. Visible texts inside an enclosure are associated as centroids with the smallest enclosure containing them.
* Topology nodes are line endpoints. Crossing lines do not close enclosures at the intersection unless they end there, even if they share a vertex. Before generating the topology, split lines with [SPLIT\_VISIBLES\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md).
* A dangling line that closes no enclosure does not form an enclosure by itself.

## Errors

If the topology cannot be formed, the command displays an error balloon titled "Topology", sounds an error tone, and preserves any previous temporary topology:

| Message | Cause |
| :--- | :--- |
| Double points found | The first two or last two vertices of a visible line coincide in plan coordinates (duplicate points). |
| Entities with a single point have been located | A visible line has only one vertex. |
| No entities to be worked with have been found | There are no visible lines from which to form enclosures. |

A single visible line with duplicate points or only one vertex prevents the topology from being formed, even if its code is not in the code table.

Lines with duplicate points or a single point are also added to the Tasks pane, one task per entity. Click a line's task to center the view on that line. If the Tasks pane's [Empty automatically](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/panel-de-tareas/vaciar-automaticamente.md) option is enabled, the command clears the pane before adding tasks.

When the topology is formed, the command draws nothing and displays no message. The resulting topology replaces the previous temporary topology.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Generate topology for flooding (without holes) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [UNLOAD\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md)<br>[GENERATE\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) |
| Internal name | {73979743-2DC6-423F-A91F-AC1786742600} |
