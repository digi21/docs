# R\_TEXTO
<!-- id: r-texto -->
<!-- origen: 4e422bb2f5bf821b31fece4ebbe20e1417675804 -->

Rotate existing text in the drawing file.

## Parameters

Does not accept parameters.

## Notes

The command requests three inputs:

1. Select text in the current model.
2. Digitize a point. The text's new rotation is the direction from its insertion point to this point.
3. Digitize the destination point. Move the text by the vector from the selection point to the destination.

Press the reset button to cancel.

If quality control rejects the modified entity, the original is retained unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Texts/Rotate text |
| Toolbar | Texts |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CHNG\_TH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CHNG\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[CHNG\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[ROTATE\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md) |
| Internal name | {1532600B-7595-4558-B8A1-5433176BB845} |
