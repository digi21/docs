# ANADE\_ATRIBUTO\_ACTIVO

Añade un atributo al panel [atributos-activos.md](../../../paneles/atributos-activos.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| - | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -- |
| 1 | Nombre del campo         | Cadena de caracteres                                                                                                                                                                                                                                                                                                    | No |
| 2 | Tipo de valor a almacenar | 0. Cadena de caracteres<br>1. Byte con signo<br>2. Byte sin signo<br>3. Entero corto con signo<br>4. Entero corto sin signo<br>5. Entero con signo<br>6. Entero sin signo<br>7. Entero de 64 bits con signo<br>8. Entero de 64 bits sin signo<br>9. Coma flotante simple<br>10. Coma flotante doble<br>11. Fecha<br>Si se omite, el campo es una cadena de caracteres.| Si |
| 3 | Valor a asignar          | Valor compatible con el tipo o el nombre de alguna [Macro de base de datos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md)                                                                                                                                                  | Si |

### Ejemplos

```
elimina_atributos_activos
anade_atributo_activo=Nombre
anade_atributo_activo=Edad 2
anade_atributo_activo=Escala 4 1000
anade_atributo_activo=Altura 9 %ENTITY_FIRST_VERTEX_Z%
```

## Observaciones

Esta orden se utiliza para asignar en el panel de Atributos Activos los atributos que se almacenarán al dibujar una nueva geometría.

Si no se pasa ningún parámetro, la orden muestra un mensaje de error y no añade nada. Si el campo ya existe en el panel, la orden sustituye su tipo y su valor. Si no se pasa el valor, el campo toma el valor vacío o 0 del tipo indicado.

Si el valor no es una macro, la orden lo convierte al tipo indicado. Los formatos admitidos no dependen de la configuración regional de Windows:

- Enteros: solo dígitos, con signo opcional (`1000`, `-5`).
- Reales: punto decimal y exponente opcional (`12.5`, `1e3`). La coma no se admite.
- Fechas: año-mes-día, con hora opcional (`2026-10-03`, `2026-10-03 14:30`).

Si el valor no tiene ese formato o no cabe en el tipo, por ejemplo `-1` para un entero sin signo, la orden muestra un mensaje de error y no añade el campo.

Si introducimos como valor a asignar una [Macro de base de datos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md) el programa mostrará el nombre de la macro en el panel de atributos activos y el campo se configurará como un campo de sólo lectura. Al almacenar la geometría se almacenará el valor calculado.

## Características de la orden

| Tipo de orden                                    | Orden inmediata |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repite automáticamente                           | No                                                                                                                                                                                                                                                                                                                       |
| Opción del menú donde aparece la orden           | _Esta orden no tiene asociada ninguna opción de menú_                                                                                                                                                                                                                                                                    |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asignada ninguna barra de herramientas_                                                                                                                                                                                                                                                             |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                               |
| Variables relacionadas                           | No tiene variables relacionadas |
| Órdenes relacionadas                             | [ASIGNA\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ELIMINA\_ATRIBUTOS\_ACTIVOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina_atributos_activos.md)<br>[RESETEA\_ATRIBUTOS\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/resetea-atributos-bbdd.md) |
| Nombre interno | {FE924FFF-1C80-4348-A9FE-A8856B72818D} |
