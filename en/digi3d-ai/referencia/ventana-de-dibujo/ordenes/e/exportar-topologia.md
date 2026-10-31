# EXPORT\_TOPOLOGY
<!-- id: exportar-topologia -->
<!-- origen: 261b7e3e1dfbdf822351016db3c1d304e531b337 -->

Export selected loaded topologies to a file as polygons.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 … N | Name of a loaded topology to include. Enclose names containing spaces in quotes | — | Yes |

## Notes

The command displays a dialog box for selecting the destination file and format. It includes a checkbox for each topology specified in the parameters, selected if the topology is loaded and cleared otherwise. Without parameters, a selected checkbox appears for each loaded topology.

For each selected topology, the command exports valid enclosures with associated centroids. Each enclosure is exported as a polygon with its holes. The topology configuration in the code table determines the polygon code and how its Z is calculated. If the topology is not defined in the code table (for example, because [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md) calculated it from a table file), the polygon takes the centroid code, and Z comes from the geometries forming the polygon (two and a half dimensions).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Export polygons to file/Selecting topologies...<br>Topology/Export polygons to file/All topologies...<br>Topology/Export polygons to file/\(one option per loaded topology\) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)<br>[TOPOLOGY\_FROM\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md) |
| Internal name | {5512E8A0-BB41-43B5-A95C-8B714C00407A} |
