# CREATE\_COMPLEXES\_COD
<!-- id: crear-complejos-cod -->
<!-- origen: 065ef1deec262794d2122d9fb6393c8cfefd3b11 -->

Create complex elements by grouping entities with the same code.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Codes of entities to group. A parameter starting with `#` is replaced with all codes bearing that tag in the code table. | Yes. Without parameters, display the code search dialog box |

## Notes

For each code, create a complex entity with that code containing copies of undeleted entities in the active drawing file whose first code matches it exactly, and delete the originals. Wildcards are not interpreted: `CREATE_COMPLEXES_COD=*` only groups entities whose code is literally `*`.

If quality control rejects the complex entity for a code, retain that code's original entities. Complex entities for other codes are created normally.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md)<br>[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOIT\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOIT\_COMPLEXES\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md) |
| Internal name | {D79CD929-8B17-41DE-8F12-2C7D0262AE9F} |
