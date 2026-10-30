# INSERT\_HOLE
<!-- id: insertar-hueco -->
<!-- origen: ac91d7e3a35522a180716d1af14fa4b7e17c35ef -->

Insert a hole in a polygon or a closed line.

## Parameters

Does not accept parameters.

## Notes

1. Select the polygon or closed line in the current model where you want to insert the hole.
2. Select the line or polygon without holes that forms the hole. All vertices of the geometry forming the hole must be inside the entity selected in step 1; if any vertex is outside, the command displays a warning and rejects the hole.

The command replaces the entity from step 1 with a polygon that has the same codes as the replaced entity and the added hole. If the entity from step 1 was a closed line, the result is a polygon.

In the command settings, the **INSERT\_HOLE** category has two properties:

* **Action to be carried out with the geometry inserted in INSERT_HUECO**: do not remove the geometry forming the hole, remove it, or ask.
* **Allow adding more than one hole**: if enabled, the command accepts several consecutive holes and finishes when you press the spacebar.

If the action property for the hole geometry is set to ask, the command asks whether to delete the geometry forming the hole before adding the polygon. If quality control rejects the new polygon, both the original entity and the hole geometry are preserved; neither is deleted.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Polygons/Insert polygon hole |
| Toolbar | Polygons |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DELETE\_HOLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borrar-hueco.md) |
| Internal name | {0A26B11E-E894-4b05-8034-0E89323F6710} |
