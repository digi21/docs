# SELECT\_WINDOW
<!-- id: selecciona-ventana -->
<!-- origen: 4ef8b93ad8857871505f2757bd102cf8130ddd7e -->

Digitize a new window and select all entities overlapping it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize two opposite corners of the window with the data button. The window aligns with the screen edges. If [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) is enabled, mark selected entities and wait for confirmation: press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. If SEE is disabled, send entities without confirmation. If the window contains no entities, sound the error tone and request the first corner again.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select window based on overlap |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — user confirmation of the snap selection |
| Related commands | [SELECT\_INSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md)<br>[SELECT\_OUTSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md)<br>[SELECT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md) |
| Internal name | {D8CC38AB-50C3-41ca-81B5-8D295CDA3395} |
