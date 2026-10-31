# ZFIXED
<!-- id: zfija -->
<!-- origen: a0d127cbac820b0a7305b3da449d2172da805102 -->

Assign all vertices of each selected entity the same Z coordinate, a multiple of the contour interval.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | One or more codes, separated by spaces | Yes |

## Notes

The command takes the median of the geometry's vertex Z values, rounds it to the nearest multiple of [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md), and assigns that Z to all vertices. Geometries whose vertices already share a Z that is a multiple of the contour interval remain unchanged.

Without parameters, the command prompts you to select one or more geometries and repeats until canceled.

With parameters, it does not prompt for a selection: it processes all visible geometries within the area of interest with one of the specified codes, then finishes.

If quality control rejects the modified entity, the original entity is preserved unchanged. With multiple entities, each is handled independently: the original of each rejected entity is preserved, and the others are modified.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/ZFixed (assign the Z coordinate of vertices to the nearest multiple of equidistance)/Visible geometries |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md)<br>[CHNG\_ACTIVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z-activa.md) |
| Internal name | {3E17788B-48FA-4A1B-9EAC-F65E66CDAE30} |
