# TRANSFORMA\_COMPLEJO\_A\_PUNTO
<!-- id: transforma-complejo-a-punto-2 -->
<!-- origen: 18f6c7610340f536c0914fa617e463d7219f2f3c -->

Replace complex entities bearing specified codes with points at their bounding box centers.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Code of entities to transform | Code. Compare each entity's first code | No |
| 2 and subsequent | More codes of entities to transform | Codes | Yes |

For example, `TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT`.

## Notes

Replace each undeleted complex entity whose first code matches a specified code with a point. Place it at the original bounding box center, retaining the entity's codes, with rotation 0 degrees and scale 1. Delete the original entity.

Use for DGN files imported with points represented as complex entities instead of points.

If the code is missing, sound the error tone and display a dialog box explaining the reason and usage.

This command is Python script `transforma_complejo_a_punto.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

[Transform complex entities into points](/digi3d-ai/programacion/python/panel-de-python/ejemplos/transforma-complejo-a-punto.md) explains the code.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | transforma\_complejo\_a\_punto.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [transforma\_complejo\_a\_punto.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/transforma_complejo_a_punto.py) |
| Related variables | No related variables |
| Related commands | No related commands |
