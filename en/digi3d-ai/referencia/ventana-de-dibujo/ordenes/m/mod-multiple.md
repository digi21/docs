# MOD\_MULTIPLE
<!-- id: mod-multiple -->
<!-- origen: c2071c8806142073fdeb03e90901614c38afa482 -->

Modify the geometry of multiple entities in XY.

## Parameters

Does not accept parameters.

## Notes

Draw an entity representing the new alignment of the elements to modify. Before ending it, run MOD\_MULTIPLE. Draw the new section so it connects with points of the entity being modified.

Find points on that entity nearest the modifying entity's first and last points, and replace the section between them with the modifying entity's points.

Adjust elevations of the modifying entity's points to those of the modified entity. If you do not want to modify elevations, use [MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md).

Replace the modifying entity's code with the modified entity's code, regardless of the code used to draw the modifying entity.

Continue requesting entities to modify using the same alignment until Esc.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Polylines/Modify multiple existing polylines on XY with the polyline being registered |
| Toolbar | Modify |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md)<br>[MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md)<br>[MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md) |
| Internal name | {8F810FF6-B3F4-4080-9572-84554E9F33AE} |
