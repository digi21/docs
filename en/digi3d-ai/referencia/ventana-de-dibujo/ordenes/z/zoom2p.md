# 2PZOOM
<!-- id: zoom2p -->
<!-- origen: 8d436288e55fccc377cf4348af9244ce165ef264 -->

Pan the DigiNG view with the mouse.

## Parameters

Does not accept parameters.

## Notes

Press and hold the left mouse button on a drawing point, then move the cursor to pan the view. Release the button when the drawing reaches the desired position.

While this command runs, [AUTO\_MOUSE](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md) is disabled. Its previous value is restored when the command finishes.

After you release the button, [PREVIOUS\_ZOOM](zoom-anterior.md) can restore the view to its position when you pressed it.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Zooms/Move view |
| Toolbar | Window displacement |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AUTO\_MOUSE](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md) — enable or disable automatic zoom when using the mouse<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [PREVIOUS\_ZOOM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md)<br>[ZOOMTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zooma.md)<br>[ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md) |
| Internal name | {C3B33B92-A260-421b-92BF-B3917240D97B} |
