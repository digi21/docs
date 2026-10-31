# SELECT\_INSIDE\_POLYGON
<!-- id: selecciona-dentro-poligono -->
<!-- origen: d369669a355e2faed0b2be8b0eff75be86f7ecc2 -->

Digitize a new polygon and select all entities entirely inside it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize polygon vertices with the data button and close it with the reset button. Selected entities are marked. Press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. Deleted or hidden entities and those outside the area of interest are not selected.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select polygon based on inclusion |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — active recording increment<br>[GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — move the stereoplotter to the snapped coordinates when snapping |
| Related commands | [SELECT\_INSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md)<br>[SELECT\_OUTSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md)<br>[SELECT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md) |
| Internal name | {A75C16BD-F7C9-4607-8C18-D5261ACB9F06} |
