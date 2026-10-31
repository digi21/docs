# CHNG\_JT
<!-- id: camb-jt -->
<!-- origen: d18607e25f38eb6d36f4d32610b52c1147ae8583 -->

Change the justification of one or more existing texts in the drawing.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Codes of texts to modify. Use `#etiqueta` for all codes bearing that tag | Yes |

Without parameters, select the texts. Multiple selection is supported.

With parameters, modify all visible, undeleted texts within the area of interest bearing any specified code, without prompting.

Assign the justification from [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md):

| Value | Position |
| :--- | :--- |
| 0 | Place the insertion point southwest of the text |
| 1 | Place the insertion point west of the text |
| 2 | Place the insertion point northwest of the text |
| 3 | Place the insertion point north of the text |
| 4 | Place the insertion point northeast of the text |
| 5 | Place the insertion point east of the text |
| 6 | Place the insertion point southeast of the text |
| 7 | Place the insertion point south of the text |
| 8 | Place the insertion point at the text center |

## Notes

Before running, set the desired text justification with [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

Change the justification of an individual text or all texts bearing a code with CHNG\_JT=&lt;code&gt;.

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | Edit/Texts/Change justification of text |
| Toolbar | Texts |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CHNG\_TH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CHNG\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Internal name | {EC867714-78A8-464f-ABC4-DC1A08990F49} |
