# REWRITE
<!-- id: reescribe -->
<!-- origen: ae5e7854990e30f8ec6106ac59e99097e137134d -->

Rewrite selected entities.

## Parameters

Does not accept parameters.

## Notes

Select one or more entities (multiple selection is supported). Store them again in the drawing file.&#x20;

If the drawing file is linked to a database, regenerate attributes of the stored entities in that database.

If the database schema in the code table was modified, for example by adding a rotation field for points and texts, fill those fields automatically when storing the entities again.

If quality control rejects a rewritten entity, retain its original unchanged. Handle multiple entities independently: retain each rejected original and rewrite the others.

## Command characteristics

| Command type                                    | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md)                                            |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repeats automatically                           | Yes |
| Menu option           | Edit/Rewrite selected geometries                                    |
| Toolbar | _This command has no associated toolbar button_ |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                   |
| Implementation | Native |
| Related variables                           | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed                                              |
| Related commands                             | No related commands |
| Internal name | {3E3A20C6-2E60-4428-9E9D-68C95EF39099} |
