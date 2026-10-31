# CHNG\_AA
<!-- id: camb-aa -->
<!-- origen: f257918d8877163eba182dab0d42a882a2151c3d -->

Assign the active angle to the rotation of one or more texts or points in the drawing.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code of entities to modify. Use `#etiqueta` for all codes bearing that tag | Yes |
| 2 | [Geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as a string of letters. Only points and texts have angles: `P` and `C` specify points, `T` texts, and `*` both. Other geometry type letters have no effect. `P` excludes point-based complex entities. Default: points and texts | Yes |

Without parameters, select texts or points. Multiple selection is supported.

With parameters, modify all visible, undeleted texts and points within the area of interest bearing the specified code, without prompting.

## Notes

Before running, set the new active angle with [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | Edit/Points/Set an active angle<br>Edit/Texts/Change active angle of text |
| Toolbar | Points<br>Texts |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_TH](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CHNG\_ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-esc-act.md)<br>[CHNG\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[CHNG\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[ROTATE\_POINT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Internal name | {574ECF13-972A-4efb-A037-6E036D1036D2} |
