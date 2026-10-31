# ADD\_ACTIVE\_ATTRIBUTE
<!-- id: anade-atributo-activo -->
<!-- origen: 7215303f1f786fd54843ed6c6044374e9d30bacc -->

Add an attribute to the [Active attributes](../../../paneles/atributos-activos.md) pane.

## Parameters

| Parameter number | Description | Values | Optional |
| - | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -- |
| 1 | Field name | String | No |
| 2 | Value type to store | 0. String<br>1. Signed byte<br>2. Unsigned byte<br>3. Signed short integer<br>4. Unsigned short integer<br>5. Signed integer<br>6. Unsigned integer<br>7. Signed 64-bit integer<br>8. Unsigned 64-bit integer<br>9. Single-precision floating point<br>10. Double-precision floating point<br>11. Date<br>If omitted, the field is a string.| Yes |
| 3 | Value to assign | A value compatible with the type, or the name of a [database macro](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md) | Yes |

### Examples

```
delete_active_attributes
add_active_attribute=Nombre
add_active_attribute=Edad 2
add_active_attribute=Escala 4 1000
add_active_attribute=Altura 9 %ENTITY_FIRST_VERTEX_Z%
```

## Notes

Use this command to set, in the Active attributes pane, the attributes to store when drawing a new entity.

Without parameters, the command displays an error message and adds nothing. If the field already exists in the pane, the command replaces its type and value. If the value is omitted, the field takes the empty or zero value of the specified type.

If the value is not a macro, the command converts it to the specified type. Accepted formats do not depend on Windows regional settings:

- Integers: digits only, with an optional sign (`1000`, `-5`).
- Real numbers: decimal point and optional exponent (`12.5`, `1e3`). Commas are not accepted.
- Dates: year-month-day, with an optional time (`2026-10-03`, `2026-10-03 14:30`).

If the value does not match that format or is outside the type's range, such as `-1` for an unsigned integer, the command displays an error message and does not add the field.

If you enter a [database macro](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md) as the value, the program displays the macro name in the Active attributes pane and makes the field read-only. When storing the entity, the program stores the value calculated by the database macro.

Of the macros with parameters, `%ENTITY_ATTRIBUTE=nombre%` is supported; it retrieves the value of the entity's `nombre` attribute. `%CENTROID_VALUE=…%` is not supported: it only has a value when exporting topologies.

## Command characteristics

| Command type                                    | Immediate command |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repeats automatically                           | No                                                                                                                                                                                                                                                                                                                       |
| Menu option           | _This command has no associated menu option_                                                                                                                                                                                                                                                                    |
| Toolbar | _This command has no associated toolbar button_                                                                                                                                                                                                                                                             |
| Extension                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                               |
| Implementation | Native |
| Related variables                           | No related variables |
| Related commands                             | [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[DELETE\_ACTIVE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina_atributos_activos.md)<br>[RESET\_BBDD\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/resetea-atributos-bbdd.md) |
| Internal name | {FE924FFF-1C80-4348-A9FE-A8856B72818D} |
