# DETECT\_OVERLAPS\_ALL\_LOADED\_TOPOLOGIES
<!-- id: detectar-solapes-todas-las-topologias-cargadas -->
<!-- origen: 8bda5f1483e4cbd10bd9fd3c439f47db98ff63fc -->

Detect enclosures of each loaded topology overlapping enclosures of another and add an error per pair to the [Tasks pane](/digi3d-ai/referencia/paneles/tareas.md).

## Parameters

Does not accept parameters.

## Notes

At least two loaded topologies are required. With none, display "No topology loaded"; with one, display "At least two topologies must be loaded". In both cases, sound the error tone and end. The menu option is disabled with fewer than two topologies.

### Operation

Compare each pair of loaded topologies once. Do not compare enclosures within the same topology. See [DETECT\_TOPOLOGY\_OVERLAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md) for enclosure eligibility and overlap criteria.

For each overlapping enclosure pair, add a task with text "Topology polygon: A intersects with topology polygon: B". Its coordinate is a point on the common area's boundary; its file is the active drawing file.

When finished, display "Overlaps detected: N" and sound the error tone if any exist.

The drawing is unchanged.

## Command characteristics

| Command type | Immediate command |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Detect overlaps between topologies/Between all loaded topologies |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DETECT\_TOPOLOGY\_OVERLAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md) |
| Internal name | {63B4E673-7503-42C2-A2A8-C3A4338C1587} |
