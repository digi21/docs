# 1TEXT
<!-- id: 1-texto -->
<!-- origen: 649630ce8083943334c12cde184d8f184532e16a -->

Insert the text passed as a parameter \(or entered in the message bar\) once, regardless of the state of the [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) toggle.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Text to insert | Yes |

## Notes

If no parameter is passed, the command prompts you in the message bar for the text to insert. If [AUTONUM](../../variables/a/autonum.md) is not 0, the proposed text is the number in the last inserted text plus AUTONUM, using the format specified by [AUTONUM\_FORMAT](../../variables/f/formato-autonum.md).

The command prompts you to [enter](../../introduccion-de-coordenadas.md) the coordinates of the text insertion point. The text uses the [text height](../../variables/a/at.md), [active angle](../../variables/a/aa.md), and [text justification](../../variables/j/jt.md) set when you enter the point.

If [CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) is enabled, the command places the text perpendicular to the camera viewing direction and upright on the screen, like the [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md) command.

If the text is empty, the command inserts nothing when you enter the point.

## Command characteristics

| Command type | [Interactive command](../../../ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — automatic numbering increment<br>[AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — text format when AUTONUM is used<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed<br>[CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — orient text to the camera |
| Related commands | [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Internal name | {FC032D16-31FD-48e5-8646-4481E6F12D1A} |

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/1TEXTO.mp4" caption="" type="video/mp4"></video>
