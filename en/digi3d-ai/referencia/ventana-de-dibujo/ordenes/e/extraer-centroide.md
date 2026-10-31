# EXTRACT\_CENTROID
<!-- id: extraer-centroide -->
<!-- origen: 011fa7245a9a84ff596a112e1c67440a7385cfb8 -->

Draw the centroid of a selected polygon or line.

## Parameters

Does not accept parameters.

## Notes

Only polygons and closed lines are accepted; selecting another entity sounds the error tone. Multiple selection is supported, ignoring entities other than polygons and closed lines.

The centroid is text at an interior point of the entity, with the entity's codes and its first code's name as content. Text angle, height, and justification come from AA, TH, and JT, respectively.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Centroids/Of the selected entity |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — set the active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — set the text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — change text justification on insertion |
| Related commands | [EXTRACT\_CENTROIDS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroides-cod.md) |
| Internal name | {02D3E905-EBA1-4F09-945F-63B8FCDA64C3} |
