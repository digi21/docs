# TEXT
<!-- id: texto -->
<!-- origen: 83430a99a1e1410ea2564aaae0d5e5dfd8c57f2d -->

Insert text in the drawing file.

## Parameters

| Parameter number | Description | Values | Optional |
| ------------------- | ----------- | ------- | -------- |
| 1 | Text to insert. Everything after the command name forms the text, including spaces | Text | Yes |

If no parameter is supplied, the command prompts for the text to insert in the message bar. If a parameter is supplied, it does not prompt for the text.

The text follows the cursor. Press the data button to insert it at that point. The text uses the active codes, height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and rotation set by the active angle [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md). Each execution inserts one text item. With [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) enabled, the command runs again until you cancel it with _Esc_.

### Example:

`text=Tc`

## Notes

If [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) is not 0 and no parameter is supplied, the command proposes the number in the last inserted text plus AUTONUM as the text to insert. The number in the last inserted text is the one occupying the `%d` position in [AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Run the following commands to insert even-numbered texts (2, 4, 6, ...). Then run `text` without parameters to insert each subsequent text:

`autonum=2  `\
`text=2`

Run the following commands to insert odd-numbered texts (1, 3, 5, ...). Then run `text` without parameters to insert each subsequent text:

`autonum=2  `\
`text=1`

You can change the automatic numbering format with [AUTONUM_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md).

Run the following commands to insert text with the values _Parcela 1, Parcela 2, Parcela 3,..._:

`autonum_format=Parcela %d  `\
`autonum=1  `\
`text`

You can insert a symbol by specifying @\[symbol number] as the text to insert, provided that the active code does not use a TrueType font. The symbol definition is read from the corresponding drawing file in the symbol directory.

Run the following command to insert symbol 169 from your symbol directory:

`text=@169`

If [CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) is enabled, the command places the text perpendicular to the camera viewing direction and upright on the screen, rather than in the XY plane at the active angle AA.

## Command characteristics

| Command type                                    | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repeats automatically                           | Yes |
| Menu option           | Draw/Text with active angle                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Toolbar | Texts |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Implementation | Native |
| Related variables                           | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — automatic numbering increment<br>[AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — text format when AUTONUM is used<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed<br>[CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — orient text to the camera |
| Related commands                             | [1TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[EDITABLE\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[EDITABLE\_TEXT\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Internal name | {4BE8E46A-4C4A-4b4f-8A36-3098094FA688} |
