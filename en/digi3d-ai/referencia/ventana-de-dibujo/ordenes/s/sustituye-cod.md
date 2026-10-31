# REPLACE\_COD
<!-- id: sustituye-cod -->
<!-- origen: dd9c5404ffd9effb0b38296068c4204a8dea952a -->

Replace codes of the selected entity with the active codes.

## Parameters

Does not accept parameters.

## Notes

Select the entity with the data or snap button. Delete it and create a copy with the active codes. Sound the error tone if the entity is outside the active drawing file.

Multiple selection is supported: a selection command, such as [SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md), replaces codes of all selected entities that are visible, undeleted, within the area of interest, and in the active drawing file.

If quality control rejects a modified entity, retain its original unchanged. Handle multiple entities independently: retain each rejected original and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Edit/Replace codes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [ADD\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos.md)<br>[CHNG\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[EDIT\_CODES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-cod.md) |
| Internal name | {21B55860-EFAB-4017-85DB-74972DEB774E} |
