# DIBUJA\_TEXTO\_EXTRAIDO\_CALLEJERO\_CATASTRO
<!-- id: dibuja-texto-extraido-callejero-catastro-2 -->
<!-- origen: f52d164c6884d20c7c5b75a9b73b5c1b6a71c6a6 -->

Insert text at the clicked point containing the street and property number returned by the Spanish Cadastre coordinate query service.

## Parameters

Does not accept parameters.

## Notes

Each data button press sends point coordinates to the Cadastre web service and inserts text with the response's `ldt` field. Each text has its own transaction, so each UNDO undoes one text.

Start only if the drawing window's horizontal EPSG code is supported by the service: 4230, 4326, 4258, 32627, 32628, 32629, 32630, 32631, 25829, 25830, 25831, 23029, 23030, or 23031. Otherwise, write a message in Results and do not start.

If the service returns an error, write it in Results, sound the error tone, and display a message box.

This command is Python script `dibuja_texto_extraido_callejero_catastro.py` from [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI installs it in `OrdenesPython` inside its installation folder. To modify it, copy the file to the [macro directory](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) and edit the copy: Digi3D.AI runs it instead of the installed file.

[Text from the Cadastre street directory](/digi3d-ai/programacion/python/panel-de-python/ejemplos/dibuja-texto-extraido-callejero-catastro.md) explains the code.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | dibuja\_texto\_extraido\_callejero\_catastro.py |
| Implementation | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Source code | [dibuja\_texto\_extraido\_callejero\_catastro.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_callejero_catastro.py) |
| Related variables | No related variables |
| Related commands | [DIBUJA\_TEXTO\_EXTRAIDO\_SERVICIO\_MAPAS\_AZURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-texto-extraido-servicio-mapas-azure.md) |
