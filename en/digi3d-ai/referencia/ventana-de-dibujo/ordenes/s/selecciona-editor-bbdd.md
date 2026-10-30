# SELECT\_BBDD\_EDITOR
<!-- id: selecciona-editor-bbdd -->
<!-- origen: b293baa7dd1b9340a999bda6e81c0ca99affa942 -->

Select drawing entities linked to the records selected in a database editor.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Database editor number | Integer from 0 to 3. 0 is the first editor | No |

## Notes

A command that supports multiple selection must already be running.

The command passes entities from any loaded drawing file to the active command if they are visible, are within the area of interest, and have a code linked to one of the records selected in the editor. Only the table of the first selected record is considered. If no records are selected in the editor, or no entity is linked to them, the command displays a warning and plays an error sound.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [SELECT\_GEOMETRY\_BBDD\_PANEL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-geometria-panel-bbdd.md) |
| Internal name | {175A9D2E-D7B2-4915-816D-6F7D65E68EF4} |
