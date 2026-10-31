# SELECT\_OUTSIDE\_POLYGON
<!-- id: selecciona-fuera-poligono -->
<!-- origen: 1e4194eaee2ac33202e3758078fc97786d4e67a9 -->

Digitize a new polygon and select all entities entirely outside it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize polygon vertices with the data button and close it with the reset button. Selected entities are marked. Press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. Deleted or hidden entities and those outside the area of interest are not selected.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select entities outside polygon |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — active recording increment<br>[GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — move the stereoplotter to the snapped coordinates when snapping |
| Related commands | [SELECT\_INSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md)<br>[SELECT\_OUTSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md)<br>[SELECT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md) |
| Internal name | {78C1F628-2674-451B-B00F-11E18CF3A4A3} |
