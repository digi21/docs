# CREATE\_COMPLEX
<!-- id: crear-complejo -->
<!-- origen: 99033f2af0caa3c4fd5a46ef0ea46e0adeb8423c -->

Create complex elements from multiple entities.

## Parameters

Does not accept parameters.

## Notes

1. Select entities to include in the complex entity. Only entities in the current model can be selected. All must have the same number of codes; otherwise, the command sounds the error tone and displays a warning.
2. Press the spacebar.

The command creates a complex entity containing copies of the selected entities and deletes the originals.

If quality control rejects the new complex entity, all original entities are retained and the complex entity is not added.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Create a complex element |
| Toolbar | Complexes |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md)<br>[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOIT\_COMPLEXES\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md) |
| Internal name | {B4DAA0C9-EC51-4c07-946A-3741A74C3189} |
