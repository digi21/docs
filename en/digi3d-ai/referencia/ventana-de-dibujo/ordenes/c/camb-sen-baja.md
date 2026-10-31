# CHNG\_DOWN\_DIR
<!-- id: camb-sen-baja -->
<!-- origen: 574536ea7718313334ebe223b0e95fa14a09db00 -->

Change the order of recorded points after digitizing a drawing element so the line runs from its higher endpoint to its lower endpoint.

![CHNG_DOWN_DIR: reverse a line whose first vertex is at z 100 and last at z 120; leave a line whose first vertex is higher unchanged](../../../../../images/orden-camb-sen-baja.svg)

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes (one or more, separated by spaces) | Yes |

Without parameters, select one or more lines. With codes, process all visible lines bearing them and end:

`CHNG_DOWN_DIR=<código>`

## Notes

Compare only the first and last vertices' Z. If the first is lower, reverse all vertices; otherwise, leave the line unchanged. Intermediate vertices are not reordered individually.

If quality control rejects a modified entity, retain its original unchanged. Handle multiple entities independently: retain each rejected original and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Order Z coordinates in descending order |
| Toolbar | Polyline direction |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_DIREC](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen.md)<br>[CHNG\_UP\_DIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-sen-sube.md) |
| Internal name | {D010A20E-6879-4837-A8B8-F454089755D4} |
