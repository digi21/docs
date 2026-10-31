# EXPLODE\_POLYGONS\_COD
<!-- id: explotar-poligonos-cod -->
<!-- origen: 3584613abd254d7eeb13ab972e0f8c8b1385d056 -->

Break down polygons bearing the specified codes into their constituent entities.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

Without parameters, display a dialog box for selecting codes. Explode polygons in the active drawing file that are visible, within the area of interest, and bear any specified code. Each polygon becomes one line with its exterior boundary and polygon codes, and one line for each hole with that hole's codes.

If Digi3D.AI rejects any resulting entity, no polygons are exploded and all originals are retained.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polygons/Break down polygon based on code... |
| Toolbar | Polygons |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLODE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Internal name | {E72C8E5E-2C00-46E9-AAAA-A2E6E33C83EF} |
