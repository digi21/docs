# DELETE\_UNKNOWN\_CODES
<!-- id: eliminar-codigos-desconocidos -->
<!-- origen: 49b093d75ea3b4da32874fe4c7ff235939abeae5 -->

Remove all unknown codes from the drawing file.

## Parameters

Does not accept parameters.

## Notes

A code is unknown when it is not defined in the code table. The command iterates over undeleted entities in the active reference file and removes their unknown codes. If all codes on an entity are unknown, the command deletes the entity.

Each entity is handled independently: if Digi3D.AI rejects an entity with the unknown codes removed, the original entity corresponding to the rejected copy is preserved, and the other entities are modified.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [RENAME\_UNKNOWN\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renombrar-codigos-desconocidos.md) |
| Internal name | {7492F25D-B5E7-4969-B8C4-F37A5F8B07EC} |
