# UPDATE\_ATTRIBUTES
<!-- id: actualiza-atributos -->
<!-- origen: 8f0c7bc25ec1312e47d042099228aa9a32991cbc -->

Update the selected entity's attributes with those active in the Active attributes pane.

## Parameters

Does not accept parameters.

## Notes

This command does not replace the entity's attributes as [CHNG\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md) does. If the entity already has an attribute listed in the Active attributes pane, the command assigns the pane's value to it. If the entity does not have an attribute from the pane, the command adds it. The command retains entity attributes not listed in the pane.

If an active attribute's value is a special value (macro), the command calculates it for each entity and converts the result to the field's type.

The command only replaces entities whose attributes change. In multiple selection, it ignores deleted entities and those outside the current model.

When you run this command, the program prompts you to select the entities whose attributes you want to update.&#x20;

This command supports [multiple selection](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), so you can modify the attributes of several entities at once.

If quality control rejects the modified entity, the original entity is preserved unchanged. If you select several entities, the command handles each independently: it preserves the original of each rejected entity and modifies those that pass quality control.

## Command characteristics

| Command type                                    | [Interactive command](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md)                                                                                                          |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repeats automatically                           | Yes |
| Menu option           | Edit/Update the attributes of an entity to the active ones                                                                                                  |
| Toolbar | _This command has no associated toolbar button_                                                                                                        |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Implementation | Native |
| Related variables                           | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands                             | [CHNG\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md)<br>[CLONE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md) |
| Internal name                                   | {0A40A990-893E-4975-B7F1-915DF25FAE2A}                                                                                                                          |
