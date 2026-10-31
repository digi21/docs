# PROJECT\_TOPOLOGY\_POINTS
<!-- id: proyecta-puntos-topologia -->
<!-- origen: bc63c4812596ecc563682773ace9afbb4b2a03b1 -->

Project entities forming a topology's enclosures onto loaded DTMs.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Topology name | No |
| 2 … N | Code or codes (one or more) of entities to project | No |

## Notes

Traverse valid enclosures of the specified topology in the active drawing file. Project each entity forming an enclosure and bearing a specified code only once: each vertex takes Z from the first DTM containing it; vertices outside all DTMs retain their Z.

Display a warning and end if parameters are missing, no DTM is loaded, no topology is loaded, or the specified topology does not exist.

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
| Related commands | [PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md)<br>[PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md)<br>[PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md)<br>[PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md) |
| Internal name | {466C85ED-6F47-4012-A761-E7787E261241} |
