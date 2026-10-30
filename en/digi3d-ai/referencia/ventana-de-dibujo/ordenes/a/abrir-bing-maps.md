# OPEN\_BING\_MAPS
<!-- id: abrir-bing-maps -->
<!-- origen: 668ab6851ff645e19de57f66df29286294d780e3 -->

Open a Bing Maps window at the drawing window cursor coordinates.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Map style (default: "a") | Yes |

## Notes

The command transforms the cursor X and Y coordinates from the drawing file coordinate reference system to WGS84 (EPSG:4326) and opens Bing Maps in the default browser at zoom level 20. If multiple transformations are possible, it displays a dialog box for selecting one.

The parameter is passed unchanged to Bing Maps as the map style (`style`).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Zooms/Open a Bing Maps window in this position/Aerial view...<br>Zooms/Open a Bing Maps window in this position/Road view...<br>Zooms/Open a Bing Maps window in this position/Aerial view of the map with labels...<br>Zooms/Open a Bing Maps window in this position/Bird's eye (oblique) view of the map...<br>Zooms/Open a Bing Maps window in this position/Bird's eye (oblique) view of the map with labels... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OPEN\_GOOGLE\_MAPS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-maps.md)<br>[OPEN\_GOOGLE\_STREET\_VIEW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-google-street-view.md)<br>[OPEN\_OPEN\_STREET\_MAP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-open-street-map.md)<br>[OPEN\_SIGPAC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/abrir-sigpac.md) |
| Internal name | {C4C1DE51-7DE7-46A6-B73A-145B6DEAAEEC} |
