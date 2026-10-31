# MOD\_Z\_MULTIPLE
<!-- id: mod-z-multiple -->
<!-- origen: 1fdb13cf117469075d26980be2a6628668c8ded4 -->

Modify the geometry of multiple entities in XYZ.

## Parameters

Does not accept parameters.

## Notes

Draw an entity representing the new alignment of the element to modify. Before ending it, run MOD\_Z\_MULTIPLE. Draw the new section so it connects with points of the entity being modified.

Find points on that entity nearest the modifying entity's first and last points, and replace the section between them with the modifying entity's points.

Do not adjust elevations of the modifying entity's points to those of the modified entity. To avoid changing elevations, use [MOD\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md).

Continue requesting entities to modify using the same alignment until Esc, which also ends LINE.

Replace the modifying entity's code with the modified entity's code, regardless of the code used to draw the modifying entity.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Modify multiple existing polylines on XYZ with the polyline being registered |
| Toolbar | Modify |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md)<br>[MOD\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-multiple.md)<br>[MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md) |
| Internal name | {FF2FD567-1A64-4B9F-82F1-4D2379EBBBDA} |
