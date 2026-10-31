# DIBUJA\_TEXTO\_EXTRAIDO\_SERVICIO\_MAPAS\_AZURE
<!-- id: dibuja-texto-extraido-servicio-mapas-azure-2 -->
<!-- origen: aa1c987db3a2707417d8a3177fae41341284cf5a -->

Insert rotated text containing the street name returned by Azure Maps reverse geocoding for the clicked point.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Subscription key for your Azure Maps account | String without spaces | No |

## Notes

The command requests two data points for each text entity:

1. The first sets the insertion point. The command converts it to geographic coordinates and queries Azure Maps for the street name in Spanish.
2. The second sets the orientation. The command inserts the street name at the insertion point, rotated by the angle defined by the two points.

Each text entity has its own transaction, so each UNDO undoes one text entity.

If the Azure Maps query fails, the command writes the error to the Results pane, plays the error sound, and waits for another insertion point.

If the key is missing, the command plays the error sound, displays a dialog with the reason and usage syntax, and does not start.

This command is Python script `dibuja_texto_extraido_servicio_mapas_azure.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

The [Street name text from Azure Maps](/digi3d-ai/programacion/python/panel-de-python/ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md) page explains the code.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | dibuja\_texto\_extraido\_servicio\_mapas\_azure.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [dibuja\_texto\_extraido\_servicio\_mapas\_azure.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_servicio_mapas_azure.py) |
| Related variables | No related variables |
| Related commands | [DIBUJA\_TEXTO\_EXTRAIDO\_CALLEJERO\_CATASTRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-callejero-catastro.md) |
