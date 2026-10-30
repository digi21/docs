# REMOVE\_DUPLICATE\_POINTS
<!-- id: eliminar-puntos-dobles -->
<!-- origen: 28cc7f761b4c472d825af38bce4a225e9726991b -->

Remove duplicate points from entities in the active drawing file. Without a parameter, the command only removes points coincident in X,Y,Z. With a nonzero parameter, it also removes points coincident only in X,Y.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Also remove points coincident only in X,Y (0/1) | Yes |

## Notes

The command only processes lines and polygons (including their holes) that are not deleted, are visible, and are inside the area of interest.

Each entity is handled independently: if Digi3D.AI rejects an entity with duplicate points removed, its original entity is retained, and the other entities are modified.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Delete double points/Points coincident in X,Y,Z<br>Geometric analysis/Delete double points/Points coincident in X,Y |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {9D15A184-EFC0-415A-97AD-A35D627FF94A} |
