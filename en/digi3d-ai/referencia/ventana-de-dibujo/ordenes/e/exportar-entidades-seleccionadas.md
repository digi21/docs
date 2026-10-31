# EXPORT\_SELECTED\_ENTITIES
<!-- id: exportar-entidades-seleccionadas -->
<!-- origen: 869aefda6e45dca144de7b8c914d7238b53b3e21 -->

Export selected entities to a drawing file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Destination file name. If the file name has no extension, the command appends `.bind` | Yes |

## Notes

When you run the command, select the entities to export. Use the multiple selection commands to select several entities at once.

After selection, the command exports entities in the same way as [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md): if you do not specify the file name, it displays a dialog box to select the destination file and format. It only exports undeleted, visible, nonvirtual entities within the area of interest.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Export selected entities... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[EXPORTA\_VIRTUAL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md) |
| Internal name | {48605774-446F-4E9C-B594-4A9891A21D18} |
