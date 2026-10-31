# BORRA\_ATR
<!-- id: borra-atr-2 -->
<!-- origen: cb05407aaf00672e176d28622ebf5f7e68e94bdc -->

Remove database links from all entities in the drawing window.

## Parameters

Does not accept parameters.

## Notes

Traverse all entities in the drawing window, including deleted ones. For each, create a clone whose codes have the same names but no table or record, add the clones, and delete the originals.

This command is Python script `borra_atr.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside the program installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit that copy: Digi3D.AI runs it instead of the installed file.

[Remove database links](/digi3d-ai/programacion/python/panel-de-python/ejemplos/borra-atr.md) explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | borra\_atr.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [borra\_atr.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/borra_atr.py) |
| Related variables | No related variables |
| Related commands | No related commands |
