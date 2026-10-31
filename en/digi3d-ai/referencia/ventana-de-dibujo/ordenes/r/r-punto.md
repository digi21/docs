# ROTATE\_POINT
<!-- id: r-punto -->
<!-- origen: 9d346d5adbba65b7fb380eefdef9fa2cddd356f8 -->

Rotate a point symbol already inserted in the drawing file.

## Parameters

Does not accept parameters.

## Notes

Select a point in the current model, then a second point. The symbol's new rotation is the direction from its insertion point to the second point. Moving the cursor previews the resulting rotation.

Press the reset button to cancel.

If quality control rejects the modified entity, the original is retained unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Points/Rotate a point |
| Toolbar | Points |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CHNG\_ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-esc-act.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Internal name | {1E01DB60-C317-4240-8E4C-E7E1DA270985} |
