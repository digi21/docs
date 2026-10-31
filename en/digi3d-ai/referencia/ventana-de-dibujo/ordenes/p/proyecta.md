# PROJECT
<!-- id: proyecta -->
<!-- origen: a7310b3bb316403f3f4441db9d6163dcbce88931 -->

Project selected entities.

## Parameters

Does not accept parameters.

## Notes

Project selected entities of any type onto loaded DTMs. Single and multiple selection are supported. Each vertex takes Z from the first DTM containing it; vertices outside all DTMs retain their Z.

Remain active after each selection. If no DTM is loaded, display a warning and end.

If quality control rejects a projected entity, retain its original unchanged. Handle multiple selected entities independently: retain each rejected entity's original and project the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | DTM/Project entities by selection |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [PROJECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod.md)<br>[PROJECT\_COD\_TAG](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-cod-etiqueta.md)<br>[PROJECT\_BY\_CONDITION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-por-condicion.md)<br>[PROJECT\_TOPOLOGY\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/proyecta-puntos-topologia.md) |
| Internal name | {53AF5ECD-C424-4703-BA55-488803F2C116} |
