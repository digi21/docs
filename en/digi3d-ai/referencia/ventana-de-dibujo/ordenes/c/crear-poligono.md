# CREATE\_POLYGON
<!-- id: crear-poligono -->
<!-- origen: d7b7e8b2a07d392b4c98faef3b54397d263b669e -->

Create a polygon with holes from existing closed lines.

## Parameters

Does not accept parameters.

## Notes

1. Select the line closed in 2D forming the exterior boundary. It must belong to the current model.
2. Select any holes: lines closed in 2D, or polygons without holes, with every vertex inside the exterior boundary.
3. Press the spacebar.

The polygon takes the exterior boundary's codes. Depending on command configuration, the original exterior boundary and holes are retained, deleted, or the command asks whether to delete them. By default, the exterior boundary is deleted and holes are retained.

The command asks which entities to delete before adding the polygon. If quality control rejects the new polygon, all original entities are retained and none are deleted.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Polygon based on existing polylines |
| Toolbar | Polygons |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPLODE\_POLYGON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[FORM\_POLYGONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md)<br>[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) |
| Internal name | {22C249C6-F42A-4d41-8A2F-76E9C0E764CE} |
