# GENERATE\_FLOOD\_TOPOLOGY
<!-- id: generar-topologia-inundacion -->
<!-- origen: 18f77fe297de7f4bd36f353534335c9dc8ef1502 -->

Generate the in-memory topology required by flooding commands. This topology accounts for islands or holes.

## Parameters

Does not accept parameters.

## Purpose

Flooding commands work on a closed enclosure without requiring you to select its boundary lines individually: click inside the enclosure, and the command locates its boundary lines.

Flooding commands require an enclosure topology calculated before the flooding command runs to identify the enclosure containing the cursor. This command calculates that topology: it forms enclosures from all visible lines in the active drawing file and stores the result in memory as a temporary topology. It is not saved in the drawing file or added to loaded topologies.

Flooding commands are:

| Command | Menu option | Action on selected enclosures |
| :--- | :--- | :--- |
| [PUT\_ATR\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md) | Flooding/Add active codes | Add active codes to boundary lines. |
| [ADD\_ACTIVE\_CODES\_AND\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md) | Flooding/Add active codes and centroid... | Add active codes to boundary lines and, optionally, a centroid. |
| [EDIT\_CODES\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md) | Flooding/Edit codes... | Add and remove boundary line codes using a dialog box. |
| [DELETE\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md) | Flooding/Delete code... | Delete a code from boundary lines. |
| [CHNG\_COD\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod-r.md) | Flooding/Change codes | Replace boundary line codes with the active code. |
| [PUT\_COD\_ENCLOSURE\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) | — | Add a code to boundary lines and insert centroid text. |
| [SHOW\_COD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md) | — | Display boundary line codes on screen. |
| [DRAW\_E\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r-i.md) | Flooding/Generate polygon | Create a polygon from enclosure boundaries. |
| [SEARCH\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md) | Flooding/Search for centroid | Center the view on the enclosure centroid. |
| [COPY\_CENTROID\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md) | Flooding/Copy Centroid | Copy an enclosure's centroid to other enclosures. |
| [ZOOME\_E](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome-r.md) | Zooms/Zoom to extension of site (due to flooding) | Fit the view to the enclosure extents. |
| [SELECT\_FLOOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-inundacion.md) | Immediate/Select by flooding | Send boundary lines to the active command. |

If you run a flooding command without generating the topology first, it displays "No temporary topology is created", sounds an error tone, and ends. Menu options running these commands are disabled while no topology exists.

## How enclosures are formed

* The command forms enclosures only from visible lines in the active drawing file: lines with visible codes and, if unknown codes are visible, lines with codes not in the code table. Lines with all codes hidden do not form enclosures.
* Points, texts, and other entities that are not lines do not form enclosures. Visible texts inside an enclosure are associated as centroids with the smallest enclosure containing them.
* Topology nodes are line endpoints. Crossing lines do not close enclosures at the intersection unless they end there, even if they share a vertex. Before generating the topology, split lines with [SPLIT\_VISIBLES\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/partir-lineas-visibles.md).
* A dangling line that closes no enclosure does not form an enclosure by itself. To locate unconnected ends, use [DETECT\_NO\_CONNECTED\_VISIBLE\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-lineas-visibles-no-conectadas.md).
* An island (an enclosure surrounded by another) is a hole in the surrounding enclosure. Click inside the island to select it; click between the island and the exterior boundary to select the outer enclosure. Flooding commands also act on lines bounding holes in the selected enclosure.

## Errors

If the topology cannot be formed, the command displays an error balloon titled "Topology", sounds an error tone, and preserves any previous temporary topology:

| Message | Cause |
| :--- | :--- |
| Detected lines with double points | The first two or last two vertices of a visible line coincide in plan coordinates (duplicate points). |
| Entities detected with a single point | A visible line has only one vertex. |
| There is not enough data | There are no visible lines from which to form enclosures. |

A single visible line with duplicate points or only one vertex prevents the topology from being formed, even if its code is not in the code table.

Lines with duplicate points or a single point are also added to the Tasks pane, one task per entity. Click a line's task to center the view on that line. If the Tasks pane's [Empty automatically](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/panel-de-tareas/vaciar-automaticamente.md) option is enabled, the command clears the pane before adding tasks.

## Result

When the topology is formed, the command draws nothing and displays no message. Enclosures become visible when you run a flooding command: the enclosure containing the cursor is filled with semitransparent dark red, and pressing the data button fills the selected enclosure with red.

## When to regenerate it

The topology is calculated when you run the command and is not updated when you edit the drawing. If you add, delete, or modify lines, or change which codes are enabled, run the command again. Each run replaces the previous temporary topology.

## Unload it

* Run [UNLOAD\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md) (**Flooding/Unload topology for flooding**) to remove the topology from memory.
* [LEAVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dejar.md), [RECARGAR\_ARCHIVOS\_REFERENCIA\_VISTA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/recargar-archivos-referencia-vista.md), and [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) also discard the topology.
* [FORM\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md) uses its own temporary topology while running and restores any previous topology for flooding when finished.

## Difference from GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS

[GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) forms the same enclosures but does not assign holes to them: an enclosure surrounding an island includes the island's area, and a point inside the island is inside both enclosures.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Flooding/Generate topology for flooding |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [UNLOAD\_FLOOD\_TOPOLOGY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/descargar-topologia-inundacion.md)<br>[GENERATE\_FLOOD\_TOPOLOGY\_WITHOUT\_ISLANDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md) |
| Internal name | {DFEEED8B-17AF-4C9A-8C93-D72F4D9999C5} |
