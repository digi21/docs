# SELECT\_POLYGON
<!-- id: selecciona-poligono -->
<!-- origen: 034894e980600e9f8cccf140a698b5cefda2b6af -->

Digitize a new polygon and select all entities overlapping it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize polygon vertices with the data button and close it with the reset button. Select and mark entities entirely inside the polygon and lines crossing its boundary. Press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. Deleted or hidden entities and those outside the area of interest are not selected.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select polygon based on overlap |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — active recording increment<br>[GOTO\_SNAP](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — move the stereoplotter to the snapped coordinates when snapping |
| Related commands | [SELECT\_INSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md)<br>[SELECT\_OUTSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md)<br>[SELECT\_LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-linea.md)<br>[SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md) |
| Internal name | {95BCC467-F276-414A-B768-B5F3BB448121} |
