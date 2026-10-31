# SELECT\_OUTSIDE\_WINDOW
<!-- id: selecciona-fuera-ventana -->
<!-- origen: 3f31bdc1fea1157ee3e06f31900390bbea5d6423 -->

Digitize a new window and select all entities entirely outside it.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize two opposite corners of the window with the data button. The window aligns with the screen edges. If [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) is enabled, mark selected entities and wait for confirmation: press the data button or `+` to send them to the active command, or the reset button, `-`, or `Esc` to cancel. If SEE is disabled, send entities without confirmation. If no entities are selected, sound the error tone and request the first corner again.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select entities outside window |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SEE](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md) — user confirmation of the snap selection |
| Related commands | [SELECT\_INSIDE\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-dentro-ventana.md)<br>[SELECT\_OUTSIDE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-fuera-poligono.md)<br>[SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md) |
| Internal name | {A4584D1D-758E-44C1-B23C-DE1F7E8A141F} |
