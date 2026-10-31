# MOD\_Z
<!-- id: mod-z -->
<!-- origen: 2c63b35990a6375aa6643bd47cfaf1af9ff8d8f5 -->

Modify an entity's geometry in XYZ.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Any value. If supplied, retain the modifying entity after modification and keep [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) active with it | Yes |

## Notes

Draw an entity representing the new alignment of the element to modify. Before ending it, run MOD\_Z. Draw the new section so it connects with points of the entity being modified.

Find points on that entity nearest the modifying entity's first and last points, and replace the section between them with the modifying entity's points.

Do not adjust elevations of the modifying entity's points to those of the modified entity. To avoid changing elevations, use [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md).

Replace the modifying entity's code with the modified entity's code, regardless of the code used to draw the modifying entity.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polylines/Modify an existing polyline on XYZ with the polyline being registered |
| Toolbar | Modify |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md)<br>[MOD\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md)<br>[MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md) |
| Internal name | {27196CD6-E905-44ad-A4E2-31FFB7102EC5} |
