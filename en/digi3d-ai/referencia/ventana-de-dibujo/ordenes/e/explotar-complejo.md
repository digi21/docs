# EXPLOIT\_COMPLEX
<!-- id: explotar-complejo -->
<!-- origen: 094576013f224053923697665f56e33fa23f4b21 -->

Break down complex entities into their constituent line strings.

## Parameters

Does not accept parameters.

## Notes

This command is designed for complex entities in MicroStation DGN v8 files.

Select a complex entity in the current model. Multiple selection is also supported; only complex entities are processed. Each resulting entity retains its own codes.

If Digi3D.AI rejects any resulting entity, the complex entity is not exploded and the original is retained. With multiple selection, rejecting any entity retains all original complex entities and none are exploded.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Complexes/Break down a complex element |
| Toolbar | Complexes |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md)<br>[CREATE\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md)<br>[EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOIT\_COMPLEXES\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md)<br>[EXPLODE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Internal name | {080169C4-BD59-40bc-B62D-17A82378A4AC} |
