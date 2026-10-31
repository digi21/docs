# PROJECT\_COD\_TAG
<!-- id: proyecta-cod-etiqueta -->
<!-- origen: cb6972ec31203ca7f697fffb1a90fc89a59fe350 -->

Project all entities bearing a specified code onto loaded digital terrain models (DTMs) assigned the specified tag.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Tag | No |
| 2 … N | Pairs of code and [geometry type](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), in the same format as [PROJECT\_COD](proyecta-cod.md) | Yes |

## Notes

Use only loaded drawing files capable of projection \(DTMs\) with the specified tag. If no tag is supplied, or no DTM has it, display a warning and end.

With only a tag, display a dialog box for selecting codes and project all entities bearing them, as with [PROJECT\_COD](proyecta-cod.md) without parameters.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md)<br>[PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md)<br>[PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md)<br>[PROJECT\_TOPOLOGY\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md) |
| Internal name | {B61F5C8A-D1D8-4C30-B2A1-0C46B5FC12F1} |
