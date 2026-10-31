# DUPLICATE
<!-- id: duplica -->
<!-- origen: edc304d5f3f43b392405ba0b0e626f04423eb827 -->

Duplicate an entity while retaining its original code.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 and subsequent | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes |

## Notes

Select the entity to duplicate. The copy overlaps the original entity, with the same geometry, position, and code.

Without parameters, the command allows selection of lines, points, and text.

The command finishes after duplicating the selected entity. If you select several entities at once using multiple selection, it duplicates all of them.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Duplicate an entity (only geometry and codes) |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COPY\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md)<br>[COPYP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md)<br>[COPY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md)<br>[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md) |
| Internal name | {943FDA58-03D0-4293-87BC-FA4EF1F7B19C} |
