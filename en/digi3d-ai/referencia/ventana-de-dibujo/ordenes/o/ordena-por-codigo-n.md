# ARRANGE\_BY\_N\_CODE
<!-- id: ordena-por-codigo-n -->
<!-- origen: 8eee7fb90e45bbee3b0f0d9ba752adf6e4cd23be -->

Sort the entities in a file by numeric code, grouping them in the file by the numeric code they belong to.

## Parameters

This command does not accept parameters.

## Notes

The command operates on the active drawing file and sorts by each entity's first code. It converts the code to an integer by reading its leading digits; for example, `020101` and `20101` are both sorted as 20101.

If quality control rejects the modified entity, the original entity is preserved unchanged.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Advanced/Order drawing file entities based on numerical code |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ORDER\_BY\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo.md)<br>[ORDER\_BY\_DIGI\_TAB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-digitab.md) |
| Internal name | {E6C9269A-F700-422b-BD07-B45C7996CA4D} |

## Video

See also
