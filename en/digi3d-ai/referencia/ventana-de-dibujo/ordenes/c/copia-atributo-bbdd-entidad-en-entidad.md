# COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY
<!-- id: copia-atributo-bbdd-entidad-en-entidad -->
<!-- origen: a547a7d8de917d629eca7babec74fcac11ded13f -->

Copy a database field value from one entity to a field of another entity.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Source field name | No |
| 2 | Destination field name | No |

## Notes

1. Select the source entity. Only entities with a code containing the source field can be selected.
2. Select the destination entity. Only entities with a code containing the destination field can be selected.

The command assigns the source field value to the destination field of all codes on the destination entity that contain that field, then ends.

If either parameter is missing, the command sounds an error tone, displays a warning, and ends.

If Digi3D.AI rejects the entity with the modified attribute (for example, due to a database or extension constraint), the original entity is preserved unchanged.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesBaseDatos.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ASSIGN\_FIELD\_VALUE\_BBDD\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[ASSIGN\_DISTANCE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[CLONE\_BBDD\_FIELDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md) |
| Internal name | {05DCB238-42A7-4072-8F1D-C4FB95DDC570} |
