# TEXT\_R
<!-- id: texto-r -->
<!-- origen: 64efea1ca5514c96b4b454a20a5561167ed20977 -->

Insert text in the drawing in the direction you specify.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Text to insert. Everything after the command name forms the text, including spaces | Text | Yes |

If no parameter is supplied, the command prompts for the text to insert in the message bar. If a parameter is supplied, it does not prompt for the text.

## Notes

1. Press the data button at the text insertion point.
2. Move the cursor: the text rotates to follow the direction from the insertion point to the cursor.
3. Press the data button to set the direction and insert the text.

The text is created with the active codes, height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), and justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md). After you set the insertion point, you can no longer edit the text in the message bar. Automatic numbering works as in [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md).

If [CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) is enabled, the command places the text in a vertical plane, with a horizontal baseline (the line on which the characters sit) pointing from the insertion point toward the cursor.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Text with two points |
| Toolbar | Texts |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — automatic numbering increment<br>[AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — text format when AUTONUM is used<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed<br>[CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — place text in a vertical plane |
| Related commands | [1TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Internal name | {A220017C-F462-4b80-8752-4F4981789765} |
