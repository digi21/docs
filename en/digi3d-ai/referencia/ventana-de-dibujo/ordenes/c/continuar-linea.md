# CONTINUE\_LINE
<!-- id: continuar-linea -->
<!-- origen: ffcc0705983a2cc201348db5e8bfb95710855f4f -->

Continue a selected line.

## Parameters

Does not accept parameters.

## Notes

1. Select a line in the current model near the endpoint to continue from. If the selected entity is not a line or does not belong to the current model, the command sounds the error tone and waits for another selection.
2. Set the line's codes as the active codes, run [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) with all its vertices ordered so the selected endpoint is last, and delete the original line.
3. Continue digitizing vertices with LINE.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Continue polyline |
| Toolbar | Polylines |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [BEEPS](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/pita.md) — enable or disable sounds |
| Related commands | [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) |
| Internal name | {8BCECA78-3971-42ec-849B-F93B672A52E7} |
