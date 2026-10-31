# RENOMCOD\_MANTENIENDO\_ATRIBUTOS
<!-- id: renomcod-manteniendo-atributos-2 -->
<!-- origen: a04e093349ca34385a29e85560d44de79ded30df -->

Replace a code on all entities bearing it while retaining the replaced code's database table and record.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Source code | Code | No |
| 2 | Target code | Code | No |

For example, `RENOMCOD_MANTENIENDO_ATRIBUTOS=A B`.

## Notes

Replace the source code with the target on all entities bearing it. The new code retains the replaced code's table and record. Other entity codes are unchanged.

Open the drawing file without a database connection before running: this prevents Digi3D.AI from attempting to save database information when adding new entities.

If there are not exactly two parameters, sound the error tone and display a dialog box explaining the reason and usage.

This command is Python script `renomcod_manteniendo_atributos.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

[Rename a code while retaining its attributes](/digi3d-ai/programacion/python/panel-de-python/ejemplos/renomcod-manteniendo-atributos.md) explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | renomcod\_manteniendo\_atributos.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [renomcod\_manteniendo\_atributos.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/renomcod_manteniendo_atributos.py) |
| Related variables | No related variables |
| Related commands | [RENAMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md)<br>[PREFIJA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/prefija-cod.md) |
