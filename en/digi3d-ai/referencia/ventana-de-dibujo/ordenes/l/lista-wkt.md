# LIST\_WKT
<!-- id: lista-wkt -->
<!-- origen: 6987aa95580256293835f46aa5739d3fda512792 -->

List the selected geometry in WKT format.

## Parameters

Does not accept parameters.

## Notes

The command opens the Results pane and writes the selected geometry to it. Coordinates are transformed from the drawing reference system to geographic WGS 84 \(EPSG:4326\) coordinates and written in 2D only, with the drawing's number of decimal places. Points and texts are written as `POINT`, lines as `LINESTRING`, polygons as `POLYGON` \(including holes\), and complex entities as `GEOMETRYCOLLECTION`.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [LIST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista.md)<br>[LIST\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista_atributos.md) |
| Internal name | {07435CF1-F2A3-45EF-AF8B-9506CC393B2B} |
