# MOVESUP\_Z
<!-- id: sube-z -->
<!-- origen: e9f9abd0228574edef390151f5c7fbb268ac4399 -->

Increase cursor Z by the configured contour interval.

## Parameters

Does not accept parameters.

## Notes

Add [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) to cursor Z and move the cursor there, even if Z is locked. Do not round Z to a contour interval multiple. If [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) is enabled, also assign the new Z to [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md).

Set the interval in the _DigiNG New project dialog box_ or with [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md).

Use when stereoplotting contour lines. After completing one contour, raise or lower the recording Z by one interval to start the next.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Z Coordinate/Raise Z coordinate to the multiple of the previous equidistant |
| Toolbar | Z Coordinate |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval<br>[FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — lock the Z coordinate to a multiple of the contour interval<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value |
| Related commands | [MOVE DOWN\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/baja-z.md) |
| Internal name | {D382B463-F1DF-4ccb-A30B-9562721B6B8C} |
