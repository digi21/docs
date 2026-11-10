# ADD\_CODES
<!-- id: anadir-codigos -->
<!-- origen: d52c87ad2cb330b1f1e25b279568218eb5d8ca0a -->

Add the active code list to a selected entity.

## Parameters

Does not accept parameters.

## Notes

[Multiple selection](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) is supported. Modify only entities in the current model and do not add codes an entity already has. With multiple selection, write the number of received entities and entities receiving at least one code in the Results pane. With single selection, sound the error tone if the entity already has all active codes.

If quality control rejects a modified entity, retain its original unchanged. Handle multiple selected entities independently: retain each rejected original and modify entities passing quality control.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Add active codes to selected entities |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[EDIT\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-cod.md)<br>[REPLACE\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/sustituye-cod.md) |
| Internal name | {23BD8061-DF43-4D84-B53B-D6AE4374B3A8} |
