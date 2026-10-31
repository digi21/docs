# PROJECT\_COD
<!-- id: proyecta-cod -->
<!-- origen: c5073fba7b73191699b62f87332d85ba9be5e523 -->

Project entities onto the digital terrain model (DTM) loaded when the command runs.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Pairs of code and [geometry type](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) of entities to project | Yes |

## Notes

Assign each selected entity vertex the Z of the first loaded DTM containing it. Vertices outside every DTM retain their Z. Process only visible entities within the area of interest.

If no loaded drawing file can project \(DTM\), display a warning and end.

Without parameters, display a dialog box for selecting codes and project all entities bearing them.

Command line syntax:

PROJECT\_COD=\[code\] \[type\] \[code\] \[type\] …

Type is required in each pair. `B` has no effect. For point-based complex entities, project both contained entities and the insertion point. A code starting with `#` represents all code table codes bearing that tag.

### Example:

`project_cod=020400 p`

Handle each entity independently: if Digi3D.AI rejects a projected entity, retain its original unchanged; accepted entities are projected.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | DTM/Project entities against loaded DTM files by code... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [PROJECT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta.md)<br>[PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md)<br>[PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md)<br>[PROJECT\_TOPOLOGY\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md) |
| Internal name | {ABB1C326-336A-45cc-896F-33DDE9BDBFA7} |
