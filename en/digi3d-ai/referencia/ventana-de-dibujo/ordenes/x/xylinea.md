# XYLINE
<!-- id: xylinea -->
<!-- origen: 1a2067d6c010bc334d8f20923f7a1207a2514046 -->

Add vertices to the line you are digitizing. Vertices are taken from a selected line, as with EDIT. Press + and - to add vertices with the active Z.
			Press the spacebar to finish the command and insert the vertices into the line you were digitizing. You can also finish with the Data button; in that case, the command also adds a vertex where you press the button.

## Parameters

Does not accept parameters.

## Notes

[LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) must be running with a line in progress. Otherwise, the command displays a warning and finishes.

Select the source line or polygon with the data button or the snap button. The command adds the vertex nearest to the point indicated. The `+` and `-` keys move forward or back one vertex; moving back over an added vertex removes it. Added vertices take X and Y from the selected line and Z from the cursor.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)<br>[XYZLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xyzlinea.md) |
| Internal name | {4BF00D56-60C1-4D66-B58D-5E8FE5781B22} |
