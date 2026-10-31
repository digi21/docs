# EXPLODE\_POINTS
<!-- id: explotar-puntos -->
<!-- origen: b5a65efeee6928277f15c9d845b9085a739ac614 -->

Convert each point's symbol in the active drawing file into independent lines with the point's codes, and delete the point.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Code or codes of points to explode. A parameter starting with `#` is a tag equivalent to all codes bearing that tag | Yes |

## Notes

Traverse undeleted, visible points in the active drawing file. With parameters, process only points bearing any specified code; if no code matches the parameters, explode no points. Without parameters, process all undeleted, visible points in the active drawing file.

For each point, draw the symbol of every representation of each code as in the drawing window: with the [SCALE\_DRAWING](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) scale, style symbol size, point scale, and point rotation. Add each symbol stroke as a new line with the point's codes, and delete the point.

The command leaves these entities unchanged:

* Points with any code whose size is expressed in pixels: the symbol size depends on zoom and has no ground size.
* Points with a symbol that cannot be converted entirely into lines: a texture (an image), a symbol absent from the code table fonts, or a symbol containing points or texts.
* Points whose lines the drawing file does not accept, for example, a read-only file or a format storing each code in a layer restricted to one geometry type. If the file stores only some of a point's lines, the command deletes those lines and leaves the point.
* Point-based complex entities and multipoint entities. To explode points in a complex entity, first break it down with [EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md).

When finished, the status bar shows the number of exploded points, created lines, and points not exploded for each of the first three reasons. One [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) undoes the entire operation.

To convert line symbology into lines, use [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SCALE\_DRAWING](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) |
| Related commands | [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md)<br>[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLODE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[EXPLODE\_POLYGONS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md) |
| Internal name | {4B9DB358-FEB7-462A-9F39-34779422167D} |
