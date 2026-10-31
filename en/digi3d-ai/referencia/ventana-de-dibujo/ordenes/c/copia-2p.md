# COPYP
<!-- id: copia-2p -->
<!-- origen: 8e8a49e3a8f6b85e081808dd0869915e32cc5840 -->

Copy a drawing entity with translation, scaling, and rotation.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes. Without parameters, any entity type can be selected |

## Notes

Select the entity and digitize 4 points: two corresponding to the original entity and two to the entity to create. If the selected entity is a point, point-based complex entity, or text, the selection point is used as the first source point.

The new entity retains the original codes. If [FORCE\_ACTIVE\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) is enabled, the new entity is created with the active code.

If [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) is enabled, the command retains both source points and prompts for two new target points to create another copy.

You can use this command to copy entities from reference files.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Copy an entity, changing its size/orientation (2 points) |
| Toolbar | Copy and duplicate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[FORCE\_ACTIVE\_AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — force the active angle (AA) on generated entities<br>[FORCE\_TH\_ACTIVE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-at-activa.md) — force the active height (TH) on generated entities<br>[FORCE\_ACTIVE\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) — force the active code on generated entities<br>[FORCE\_ACTIVE\_JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-jt-activa.md) — force the active justification (JT) on generated entities<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md)<br>[COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md)<br>[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md)<br>[DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) |
| Internal name | {40CD46B9-6E72-40f2-A112-C4CE5D5D0B69} |
