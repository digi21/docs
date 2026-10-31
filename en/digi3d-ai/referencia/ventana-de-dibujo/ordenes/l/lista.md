# LIST
<!-- id: lista -->
<!-- origen: 7a113f33406d2e282a4cf3e125360eda7948d72d -->

Display information about the selected entity.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Path of the text file in which to save the listing in addition to showing it in the Results pane. Append to the file if it exists | Yes |

## Notes

Open the Results pane and write the file, codes, bounding window, creation date, vertex coordinates, attributes, and type-specific data \(line perimeters in 2D and 3D and area of lines closed in plan; text height, rotation, and justification; polygon holes and area\).

If the drawing window's horizontal coordinate reference system is geographic, interpret longitude and latitude in its angular unit. Calculate perimeters along geodesics on the ellipsoid in meters, and area in square meters by projecting vertices with a Lambert azimuthal equal-area projection centered on the first vertex. See [Coordinates, distances, angles, and areas for commands running in the drawing window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

If [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) is enabled, repeat automatically until Esc is pressed.

To save the coordinate listing, specify the output file name and directory, then select the entity.

### Example

LIST=C:\BROCHALES\listado1

## Command characteristics

| Command type | Information |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [LIST\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista_atributos.md)<br>[LIST\_WKT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/lista-wkt.md) |
| Internal name | {781C84EE-98C0-439c-B843-C20BF50C82CC} |
