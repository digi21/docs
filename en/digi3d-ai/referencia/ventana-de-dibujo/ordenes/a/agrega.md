# ADD
<!-- id: agrega -->
<!-- origen: 65e83e2bc0ef2ac0c61962d83d58d7ee9d69d499 -->

Append a point's coordinates to the point file defined on the DigiNG start screen or specified with [P\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md).

## Parameters

This command does not accept parameters.

## Notes

If no point file is defined, the command displays a dialog box for selecting one. If you cancel the dialog box, the command finishes.

Once a point file is defined, the command displays a dialog box where you enter the point name and information text. The point name is text. If [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) is not 0, the application suggests the last point number plus AUTONUM as the name, using the [AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) format. If AUTONUM is 0, it suggests the last point name entered.

If you check "If I snap to a geometry, I prefer the description to be obtained automatically from the code table", selecting an entity with the snap button uses its code description as the information text instead of the text you entered. Specify the point coordinates numerically \(with [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)\) or graphically. To specify the point graphically, use the data button or select a drawn entity with the snap button and accept the selection.

The point name, coordinates \(X Y Z\) with the drawing window's number of decimal places, and information text are appended to the point file. If you snapped to an entity when specifying the point, the entity's first code is also saved after the coordinates and before the information text.

If a photogrammetric window is open, the command also saves a capture of that window in a file named `<nombre del punto>.bmp`, in the point file folder.

After each point, the command displays the dialog box again for the next point. Cancel the dialog box to finish the command.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Immediate/Add... |
| Toolbar | Coordinates |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — automatic numbering increment<br>[AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — text format when AUTONUM is used |
| Related commands | [P\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-p.md)<br>[N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/n/n.md) |
| Internal name | {83730CD6-5D81-45dc-BDF4-B1ADEF65C5F5} |
