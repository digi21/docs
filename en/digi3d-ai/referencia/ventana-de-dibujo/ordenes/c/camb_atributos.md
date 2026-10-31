# CHNG\_ATTRIBUTES
<!-- id: camb-atributos -->
<!-- origen: 2030836dcc7240b4c211422d9a890ff94eee793e -->

Replace the selected entity's attributes with those active in the Active attributes pane.

## Parameters

Does not accept parameters.

## Notes

The command prompts you to select the entities whose attributes you want to change.&#x20;

This command supports [multiple selection](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), so you can modify the attributes of several entities at once.

If an active attribute's value is a special value (macro), the command evaluates it for each entity and assigns the result converted to the field's type.

If quality control rejects the modified entity, the original entity is preserved unchanged. With multiple entities, each is handled independently: the original is preserved only for rejected entities, and the others are modified.

## Command characteristics

| Command type                                    | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md)                                                                                                                              |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repeats automatically                           | Yes |
| Menu option           | Edit/Change the attributes of an entity to the active ones                                                                                                     |
| Toolbar | _This command has no associated toolbar button_                                                                                                        |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Implementation | Native |
| Related variables                           | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands                             | [UPDATE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/actualiza_atributos.md)<br>[CLONE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[EDIT\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar_atributos.md) |
| Internal name                                   | {5F66A7F4-7575-4C61-962A-0E1A40E13FB4}                                                                                                                          |
