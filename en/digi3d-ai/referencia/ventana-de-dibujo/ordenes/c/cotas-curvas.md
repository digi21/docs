# CONTOUR\_HEIGHTS
<!-- id: cotas-curvas -->
<!-- origen: 584647ac2679df22d3db727c60fdd1d7b678529f -->

Assign elevations to contour lines globally.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Contour line codes. A parameter starting with `#` is replaced with all codes that have that tag in the code table. | Yes. Without parameters, the command displays a dialog box for selecting codes |

## Notes

1. Digitize the first point with the Z of the first contour to cross.
2. Digitize the second point. The segment between the points must cross the contour lines.

The command calculates the expected contour count as the Z difference between the two points divided by the [contour interval](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md), plus one. If the number of lines with those codes crossing the segment does not match, it displays an error balloon and changes nothing.

If the line count matches the expected contour count, the command sorts the contours by distance from the first point. It assigns all vertices of each contour the first point's Z plus the contour interval multiplied by the contour's position in that order \(0 for the nearest\). If the second point has a lower Z than the first, the command subtracts the interval instead of adding it: elevations decrease from the first point.

The command does not finish after assigning elevations: digitize another pair of points, or press **Esc** to finish.

### Mark contours with assigned elevations

If the active code contains `*` or `?` wildcards, the command also changes the codes of contours whose elevations it assigns, distinguishing them from contours still awaiting elevations. Each contour code that matches the command's codes is combined with the active code: active code characters replace contour code characters, `?` preserves the contour code character, and `*` preserves the rest of the contour code, using the same rules as [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md). Other contour codes do not change. Database attributes are handled as in [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

For example, if the contours have codes `020123` and `020124`:

```
COD=0211*
CONTOUR_HEIGHTS=02*
```

Contours with assigned elevations receive codes `021123` and `021124`. When finished assigning elevations, restore the original codes with [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md).

If the active code has no wildcards, the command changes only Z and the contours retain their codes.

If quality control rejects the modified entity, the original entity is preserved unchanged. With multiple entities, each is handled independently: the original of each rejected entity is preserved, and the others are modified.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [EQUIDISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — contour interval |
| Related commands | [CONTOUR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-curvas.md)<br>[TAG\_CONTOURS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md) |
| Internal name | {B43899C2-51BB-4f8c-AD99-A04A5591BC2C} |
