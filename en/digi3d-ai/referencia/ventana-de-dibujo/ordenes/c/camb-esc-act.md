# CHNG\_ACT\_SCALE
<!-- id: camb-esc-act -->
<!-- origen: d62c5c5e0c5c290e50382b0e75f7bfd74d2315b3 -->

Assign the active scale to one or more points in the drawing.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

## Notes

Before running, set the active scale with [ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md).

Without parameters, select the points. Multiple selection is supported.

With parameters, modify all visible, undeleted points within the area of interest bearing any specified code, without prompting.

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | Edit/Points/Change Active Scale |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md) — escala activa<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[ROTATE\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md) |
| Internal name | {40EC28D8-0088-4700-AFB2-82D1F126D77A} |
