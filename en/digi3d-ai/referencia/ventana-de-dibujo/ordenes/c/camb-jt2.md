# CHNG\_JT2
<!-- id: camb-jt2 -->
<!-- origen: 4852792a06a3cc3e71713393dd59d733e9e3cf2c -->

Change the justification of one or more existing texts in the drawing without changing their position.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | Codes of texts to modify. Use `#etiqueta` for all codes bearing that tag | Yes |

Assign the justification from [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

## Notes

Before running, set the desired text justification with [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

Ways to run CHNG\_JT2:

* Without parameters: select the texts. Multiple selection is supported.
* With parameters: modify all visible, undeleted texts within the area of interest bearing any specified code, without prompting.

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CHNG\_TH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CHNG\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Internal name | {438DD10F-8817-4d33-B1D7-406DA30F19BF} |
