# SELECT\_LINE
<!-- id: selecciona-linea -->
<!-- origen: 3d8dd285bdf3da921746165e42fbcb4caa0acb00 -->

Select lines crossing a virtual line you digitize.

## Parameters

Does not accept parameters.

## Notes

A command accepting multiple selection must already be running.

Digitize both endpoints of the virtual line with the data button. Lines crossing it are marked on screen. Only visible, undeleted line entities within the area of interest are selected. Press the data button or `+` to send marked lines to the active command, or the reset button, `-`, or `Esc` to cancel. If no line crosses the virtual line, digitize another point for its second endpoint.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select line |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SELECT\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-poligono.md)<br>[SELECT\_EVERYTHING\_CURSOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-todo-en-cursor.md) |
| Internal name | {60A6C0C6-C7B7-4ca5-9846-A7639A526525} |
