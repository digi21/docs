# CONNECT\_COD
<!-- id: unir-cod -->
<!-- origen: c5a1b1ffc81cbcacce7b5f0cdfb7f1ce8e0771e7 -->

Join polylines sharing a code and crossed by a selection line.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Code of polylines to join | — | Yes |

## Notes

If no code is supplied, request it in a dialog box.

Digitize four points to draw the selection line. Find visible lines bearing the code that it crosses, and join them in pairs at the endpoints nearest the crossing, provided both endpoints have the same Z. At least one line must belong to the active drawing file; if only one does, move its endpoint to the other's endpoint. Remain active to draw another selection line.

If quality control rejects the joined line, retain both originals and add no joined line. If one line is outside the current model and the modified line is rejected, retain its original unchanged. Handle each pair independently.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polylines/Join polylines based on window and code |
| Toolbar | Join |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CONNECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir.md)<br>[JOIN\_LINES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas.md) |
| Internal name | {FB78D878-2695-4CC6-A300-22415BB52172} |
