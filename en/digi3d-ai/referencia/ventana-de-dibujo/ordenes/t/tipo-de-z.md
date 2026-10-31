# TYPE\_OF\_Z
<!-- id: tipo-de-z -->
<!-- origen: 983ef697113c34b9db05fa1fee4287a68069e8d1 -->

Specify how the program records Z coordinates for vertices of linear entities.

## Parameters

| Value | Type | Function |
| :--- | :--- | :--- |
| 0 | Descending | Record a vertex only if the point's Z coordinate is lower than that of the previous vertex |
| 1 | Gradually descending | Record a vertex only if the point's Z coordinate is less than or equal to that of the previous vertex |
| 2 | Free | Record vertices without restrictions on the Z coordinate |
| 3 | Gradually ascending | Record a vertex only if the point's Z coordinate is greater than or equal to that of the previous vertex |
| 4 | Ascending | Record a vertex only if the point's Z coordinate is higher than that of the previous vertex |

Enter `TYPE_OF_Z=2` to select the Free Z type.

`TYPE_OF_Z=?` displays the current value. Without parameters, the command displays a dialog box to enter the value.

## Notes

* The Z type is 2 (Free) when Digi3D.AI starts and is not saved between sessions.
* Values outside the 0–4 range behave as Free.
* The change also applies to the line being digitized.
* A point that does not meet the restriction is not recorded, and an error tone sounds. In continuous (*stream*) mode, the point is silently discarded.

Use a descending Z type (0 or 1) to stereoplot a watercourse and record vertices in the downstream direction.

## Command characteristics

| Command type | [Numeric variable](/digi3d-ai/referencia/ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Polyline restrictions/Z descending<br>Draw/Polyline restrictions/Z gradual descending<br>Draw/Polyline restrictions/No Z restrictions<br>Draw/Polyline restrictions/Z gradual ascending<br>Draw/Polyline restrictions/Z ascending |
| Toolbar | Polyline restrictions |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) |
| Internal name | {F3405A61-4894-487c-98C0-490005CFF029} |
