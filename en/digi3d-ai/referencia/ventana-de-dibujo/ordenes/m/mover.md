# MOVE
<!-- id: mover -->
<!-- origen: 1f14df2f01e67a0eeb86b9d1f5d58e62817a49bc -->

Change the position of one or more entities in X, Y, and Z.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1...n | Selectable [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), as letters in one or more parameters: `L P` is equivalent to `LP` | Yes. Without parameters, any entity type can be selected |

## Notes

1. Select the entity. The selection point is the origin point. For multiple entities, digitize the origin after selection.
2. Digitize the destination point.

Move entities by the \(origin point, destination point\) vector, including the Z difference. Only entities in the current model can be moved.

If quality control rejects a moved entity, retain its original unchanged. Handle multiple selected entities independently: retain the original of each entity whose move is rejected and move the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Move selected entities on XYZ |
| Toolbar | Move |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [DISPLACE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar.md)<br>[MOVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) |
| Internal name | {4FB4DD41-80C4-47e6-AD51-0B2F5C841DE0} |
