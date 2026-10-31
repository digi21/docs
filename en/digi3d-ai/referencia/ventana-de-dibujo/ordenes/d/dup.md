# DUP
<!-- id: dup -->
<!-- origen: 108481ea3fe7eeec4cdd09cc5c008c9ab1f507da -->

Create a copy of an entity in place.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 and subsequent | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes |

## Notes

Select the entity to duplicate. The copy overlaps the original entity, with the same geometry and position. It is created with the code active when the command runs.

Without parameters, the command allows selection of lines, points, text, and polygons.

The command finishes after duplicating the selected entity. If you select several entities at once using multiple selection, it duplicates all of them.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Duplicate an entity (only geometry) |
| Toolbar | Copy and duplicate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md)<br>[COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md)<br>[COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md)<br>[DUPLICATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/duplica.md) |
| Internal name | {ABF6F6D5-FE1F-46a7-A272-7648DAAB540C} |
