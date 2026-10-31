# PROJECT\_BY\_CONDITION
<!-- id: proyecta-por-condicion -->
<!-- origen: eb4e9ca4aaac79307a194e3deef1b72505392401 -->

Project vertices of entities bearing a specified code onto loaded DTMs if their Z difference satisfies a condition.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Comparison operator: `<` projects if the difference is less than the value; any other text projects if it is greater | No |
| 2 | Z difference value in CRS units | No |
| 3 … N | Pairs of code and [geometry type](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), in the same format as [PROJECT\_COD](proyecta-cod.md) | No |

## Notes

For each vertex, calculate the absolute difference between vertex Z and DTM Z. If it satisfies the condition, assign DTM Z; otherwise, retain the original Z.

If no DTM is loaded, display a warning and end. If parameters are missing, sound the error tone and do nothing.

Handle each entity independently: if Digi3D.AI rejects a projected entity, retain its original unchanged; accepted entities are projected.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [COMPARE\_Z\_DTM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comparar-z-mdt.md)<br>[PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md)<br>[PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md)<br>[PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md)<br>[PROJECT\_TOPOLOGY\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md) |
| Internal name | {0E223FD8-DFE3-43ED-B42C-15C3CED6CED8} |
