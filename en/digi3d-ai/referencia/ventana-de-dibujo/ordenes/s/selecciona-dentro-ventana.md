# SELECT\_INSIDE\_WINDOW
<!-- id: selecciona-dentro-ventana -->
<!-- origen: b55aed8fee47cfca0d3f8a0f12e9a97e649aa756 -->

Digitize a new window and select all entities entirely inside it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize two opposite corners of the window with the data button. The window aligns with the screen edges. If [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) is enabled, mark selected entities and wait for confirmation: press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. If SEE is disabled, send entities without confirmation. If the window contains no entities, sound the error tone and request the first corner again.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select window based on inclusion |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — user confirmation of the snap selection |
| Related commands | [SELECT\_INSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-poligono.md)<br>[SELECT\_OUTSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-ventana.md)<br>[SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md) |
| Internal name | {4A2E67C9-DF80-40E4-A42F-C556CDC442F6} |
