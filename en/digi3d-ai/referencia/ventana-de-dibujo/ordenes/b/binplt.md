# BINPLT
<!-- id: binplt -->
<!-- origen: a86ed12b30957f38d392eb91a0e1a49ecea2048c -->

Explode symbology using the scale configured on the Drawing file tab.

## Parameters

Does not accept parameters.

## Notes

Traverse lines in the active drawing file. For each, draw the symbology of the style associated with its first code at [SCALE\_DRAWING](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) scale. Add each symbology stroke as a new line with the original line's codes and delete the original. Retain lines whose styles generate no strokes. Points, texts, and other entities are unchanged. To convert point symbols into lines, use [EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md).

If Digi3D.AI rejects any new stroke, apply no changes and retain all original lines. Deleted lines are not processed.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [SCALE\_DRAWING](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) |
| Related commands | [EXPLODE\_POINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Internal name | {C08928A2-D95D-499D-AFDF-A552FBEAA5E1} |
