# COPY
<!-- id: copiar -->
<!-- origen: 52f3fedb4ea3eea3a4477617678ecf919f7c65a8 -->

Create a copy of a drawing entity.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes. Without parameters, any entity type can be selected |

## Notes

1. Select one or more entities.
2. Digitize the source point. If the selected entity is a point, point-based complex entity, or text, the selection point is used as the source point.
3. Digitize the target point.

The application generates entities identical to the originals, applying the translation defined by the \(source point, target point\) vector. New entities retain the original codes. If [FORCE\_ACTIVE\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) is enabled, they are created with the active code.

If [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) is enabled, the command continues creating copies: each copy's target point becomes the next copy's source point.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Copy an entity, maintaining its size/orientation |
| Toolbar | Copy and duplicate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[FORCE\_ACTIVE\_AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — force the active angle (AA) on generated entities<br>[FORCE\_TH\_ACTIVE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-at-activa.md) — force the active height (TH) on generated entities<br>[FORCE\_ACTIVE\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) — force the active code on generated entities<br>[FORCE\_ACTIVE\_JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-jt-activa.md) — force the active justification (JT) on generated entities<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md)<br>[COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md)<br>[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md)<br>[DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) |
| Internal name | {508365B4-4C21-4b58-A463-07D3083BC38D} |
