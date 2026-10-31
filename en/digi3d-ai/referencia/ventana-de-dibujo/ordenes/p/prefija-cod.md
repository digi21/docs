# PREFIJA\_COD
<!-- id: prefija-cod-2 -->
<!-- origen: a5aa9dbd99a218e16253b627c1b30258aae2c203 -->

Prepend a prefix to the codes of each entity selected with a data point or multiple selection command, except codes that already have a prefix.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Prefix | String without spaces, such as `BAI_` or `ACT_` | No |

## Notes

Each data point selects the nearest entity in the active drawing file, like the tentative pedal. Entities in reference files cannot be selected.

The command prepends the prefix to each entity code unless it starts with `ACT_`, `BAI_`, or the specified prefix. Each code retains its database table and record. If all entity codes start with one of those prefixes, the entity remains unchanged and the error sound plays.

Multiple selection is supported. With the command active, run [SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md), [SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md), another selection command, or **Send selection to the active command** in the database editor or search results pane. The command prepends the prefix to all selected entities. It ignores reference file entities, deleted entities, and entities whose codes all already have a prefix. If no selected entity changes, the error sound plays.

If Digi3D.AI cannot store an entity with the new code, for example because the drawing format does not support it, the original entity remains unchanged.

Each data point and each multiple selection has its own transaction: one UNDO reverses the change to the entity selected with a data point or to all entities in a multiple selection. The command remains active until you press reset.

To work with several prefixes, assign the command to a key or toolbar button for each prefix, for example `PREFIJA_COD=ACT_` and `PREFIJA_COD=BAI_`.

If the prefix is missing, the command plays the error sound, displays a dialog with the reason and usage syntax, and does not start.

This command is Python script `prefija_cod.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file. To change the prefix list, for example, edit that copy.

The [Prefix selected entity codes](/digi3d-ai/programacion/python/panel-de-python/ejemplos/prefija-cod.md) page explains the code.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | prefija\_cod.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [prefija\_cod.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/prefija_cod.py) |
| Related variables | No related variables |
| Related commands | [CHNG\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[RENOMCOD\_MANTENIENDO\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-manteniendo-atributos.md) |
