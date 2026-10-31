# EXPLODE\_POLYGON
<!-- id: explotar-poligono -->
<!-- origen: 421bfbf283084ed42d553e9f0c4df25e5aabe343 -->

Break down a polygon into its constituent entities.

## Parameters

Does not accept parameters.

## Notes

Select a polygon in the current model. Multiple selection is also supported; only polygons are processed. Each polygon becomes one line with its exterior boundary and polygon codes, and one line for each hole with that hole's codes.

If Digi3D.AI rejects any resulting entity, the polygon is not exploded and the original is retained. With multiple selection, rejecting any entity retains all original polygons and none are exploded.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polygons/Break down polygon |
| Toolbar | Polygons |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-poligono.md)<br>[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLODE\_POLYGONS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md)<br>[EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Internal name | {F4F7C7C1-5C1E-4412-91F7-B9CF1C24D9C3} |
