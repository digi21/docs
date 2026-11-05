# ASSIGN\_FIELD\_VALUE\_BBDD\_ENTITY
<!-- id: asigna-atributo-bbdd-entidad -->
<!-- origen: 6768cf87bfd28a3b46d64676dd3906a00285cd6b -->

Assign a new value to a database field for an entity.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code | No |
| 2 | Field name | No |
| 3 | Value | No |

## Notes

When run, the command checks that all three parameters were supplied, that the code has an associated database table in the code table, that the table exists in the database schema, and that it contains the specified field. If any check fails, it displays an error message and ends.

The command then prompts you to select an entity. Only entities in the current model with the specified code can be selected. The command converts the value to the field's existing type, assigns it to that field in the specified code's attributes on the selected entity, and ends.

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
| Related commands | [ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[ASSIGN\_DISTANCE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[CHANGE\_DDBB\_VALUES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cambiar-valores-bbdd.md)<br>[COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Internal name | {B3980EF5-BD6D-4F06-ABB9-06AB2D141982} |
