# CHNG\_TH
<!-- id: camb-at -->
<!-- origen: 97d41b07b40da1e03d5f15417227baec02971e3f -->

Change the height of one or more texts in the drawing.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Codes of texts to modify. Use `#etiqueta` for all codes bearing that tag | Yes |

Without parameters, select the texts. Multiple selection is supported.

With parameters, modify all visible, undeleted texts within the area of interest bearing any specified code, without prompting.

## Notes

Before running, set the new text height with [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md).

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | Edit/Texts/Change height of text |
| Toolbar | Texts |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CHNG\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[CHNG\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Internal name | {FFBB771C-E48F-4dac-B730-6CFA7DEBA468} |
