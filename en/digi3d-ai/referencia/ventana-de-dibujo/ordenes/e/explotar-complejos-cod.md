# EXPLOIT\_COMPLEXES\_COD
<!-- id: explotar-complejos-cod -->
<!-- origen: 720f10877264e7d709bcb2655ec4e85bd1cef279 -->

Break down complex entities into their constituent line strings.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Code or codes of complex entities to explode | Yes |

## Notes

This command is designed for complex entities in MicroStation DGN v8 files.

Without parameters, display a dialog box for selecting codes. Explode complex entities in the active drawing file that are visible, within the area of interest, and bear any specified code. Each resulting entity retains its own codes. When finished, show how many entities were exploded and how many were created.

If Digi3D.AI rejects any resulting entity, no complex entities are exploded and all originals are retained.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Complexes/Break down complex elements based on code |
| Toolbar | Complexes |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md)<br>[CREATE\_COMPLEXES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejos-cod.md)<br>[EXPLOIT\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOIT\_COMPLEXES\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md)<br>[EXPLODE\_POLYGONS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md)<br>[EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Internal name | {46DDEC37-E52A-4b1f-AE46-76CDF8BE8407} |
