# COPY\_R
<!-- id: copia-r -->
<!-- origen: 11293bf3412fa6426e8189de31259c045dae5045 -->

Copy a drawing entity and rotate it with a second input point.

![COPY_R: selected entity (1), base point (2), base point destination (3), and fourth point (4); the copy rotates by the angle of direction 3-4 measured counterclockwise from east](../../../../../images/orden-copia-r.svg)

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes |

## Notes

1. Select the entity to copy.
2. Digitize the base point.
3. Digitize the base point destination.
4. Digitize a fourth point. The copy rotates by the angle of the direction from the third point to the fourth, measured counterclockwise from east. If the fourth point is east of the third, the copy does not rotate; if north, it rotates 90°. Copied text and points rotate by the same angle.

If [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) is enabled, the command retains the entity and base point, then prompts again for the destination and rotation of another copy.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[FORCE\_ACTIVE\_AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — force the active angle (AA) on generated entities<br>[FORCE\_TH\_ACTIVE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-at-activa.md) — force the active height (TH) on generated entities<br>[FORCE\_ACTIVE\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) — force the active code on generated entities<br>[FORCE\_ACTIVE\_JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-jt-activa.md) — force the active justification (JT) on generated entities<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md)<br>[COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md)<br>[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md)<br>[DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) |
| Internal name | {BC545BCF-6444-4D86-BBA7-DDF1238E337C} |
