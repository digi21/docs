# XYZLINE
<!-- id: xyzlinea -->
<!-- origen: 5d296f66a1da103150b398faddd1b15b5e75b08d -->

Add vertices to the line you are digitizing.

## Parameters.

Does not accept parameters.

## Notes

[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) must be running with a line in progress. Otherwise, the command displays a warning and finishes.

Added vertices are taken from a line or polygon selected with the data button or the snap button. The command first adds the vertex nearest to the point indicated. The `+` and `-` keys move forward or back one vertex; moving back over an added vertex removes it. Added vertices retain their X, Y, and Z coordinates.

Press the spacebar to finish the command and insert the vertices into the line you were digitizing. If you finish with the Data button, the command also adds a vertex where you press the button.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)<br>[XYLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xylinea.md) |
| Internal name | {7FB50BE4-62C9-4af6-9B30-C2DA6249B3F1} |
