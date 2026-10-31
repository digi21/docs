# REDONDEA\_Z
<!-- id: redondea-z-2 -->
<!-- origen: a3a9a885b93eb86f76e26631bd624d0f743a77ef -->

Round every vertex Z coordinate of contours bearing the specified codes to an integer.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Index contour code | Code | No |
| 2 | Intermediate contour code | Code | No |

For example, `REDONDEA_Z=020124 020123`.

## Notes

Process undeleted entities bearing the index or intermediate contour code. For each, add a new line with the same codes and each vertex Z rounded using Python's `round`, then delete the original entity.

The new entity is always a line, regardless of the original type. `round` rounds .5 ties to the even integer: 2.5 becomes 2 and 3.5 becomes 4.

If there are not exactly two parameters, sound the error tone and display a dialog box explaining the reason and usage.

This command is Python script `redondea_z.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

[Round contour elevations](/digi3d-ai/programacion/python/panel-de-python/ejemplos/redondea-z.md) explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | redondea\_z.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [redondea\_z.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/redondea_z.py) |
| Related variables | No related variables |
| Related commands | [FILTRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/filtrar.md) |
