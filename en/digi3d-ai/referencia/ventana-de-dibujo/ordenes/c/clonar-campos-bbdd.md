# CLONE\_BBDD\_FIELDS
<!-- id: clonar-campos-bbdd -->
<!-- origen: 2c28dee95ed5115845cf3ba85f750f70c378f51e -->

Clone database fields from the selected entity.

## Parameters

Does not accept parameters.

## Notes

Select an entity. For each database field of the active codes, the command copies the value of the field with the same name from the codes of the selected entity. If several codes have that field, it uses the value from the first code. Active code fields absent from the selected entity retain their values.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/More/Clone entity DDBB attributes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CLONE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar.md)<br>[CLONE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md)<br>[COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Internal name | {3AF25FE5-B09A-457B-A2D7-18203A4FF970} |
