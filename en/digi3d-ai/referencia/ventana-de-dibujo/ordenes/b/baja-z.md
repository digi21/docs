# MOVE DOWN\_Z
<!-- id: baja-z -->
<!-- origen: bce77e22cb4b62cc64c9e7c7dab51aaf33311f8c -->

Lower cursor Z by the configured contour [interval](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

## Parameters

Does not accept parameters.

## Notes

Set the interval in the _DigiNG New project dialog box_ or with [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

Use when stereoplotting contour lines. After completing one contour, raise or lower recording Z by one interval to start the next.

Subtract the interval from current cursor Z without rounding to an interval multiple. Move the cursor to the new Z even if Z is locked. If [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) is enabled, also assign the new Z to [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Z Coordinate/Lower Z coordinate to the multiple of the previous equidistant |
| Toolbar | Z Coordinate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval<br>[FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — lock the Z coordinate to a multiple of the contour interval<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value |
| Related commands | [MOVESUP\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sube-z.md) |
| Internal name | {416EF674-CB78-4121-8671-A076F25B2763} |
