# MOVE\_Z
<!-- id: mover-z -->
<!-- origen: 8a2a63a197f933c0f1723a34c79a9d89ff90e923 -->

Change the elevation of one or more entities.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes. Without parameters, any entity type can be selected |

## Notes

Raise or lower entities by a constant distance, preserving elevation differences between each entity's points.

1. Select the entity. The selection point is the origin point. For multiple entities, digitize the origin point after selection.
2. Digitize the destination point. Add the Z difference between destination and origin to every vertex; X and Y remain unchanged.

If a digital terrain model \(DTM\) triangulation is loaded, use this command to change the elevation of its points.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Move selected entities on Z |
| Toolbar | Move |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z.md)<br>[MOVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md)<br>[MOVE\_Z\_W](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z-v.md) |
| Internal name | {87DB0F7B-28B6-4b27-BF8C-220A4D91629B} |
