# ANADE\_ATRIBUTO\_ACTIVO

Añade un atributo al panel [atributos-activos.md](../../../paneles/atributos-activos.md).

## Parámetros



| 1 | Nombre del campo         | Cadena de caracteres                                                                                                                                                                                                                                                                                                    | No |
| - | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -- |
| 2 | Tipo de valor a almacena | <p>0. Cadena de caracteres<br>1. Byte con signo<br>2. Byte sin signo<br>3. Entero corto con signo<br>4. Entero corto sin signo<br>5. Entero con signo<br>6. Entero sin signo<br>7. Entero de 64 bits con signo<br>8. Entero de 64 bits sin signo<br>9. Coma flotante simple<br>10. Coma flotante doble<br>11. Fecha</p> | No |
| 3 | Valor a asignar          | Valor compatible con el tipo o el nombre de alguna [Macro de base de datos](/digi3d-net/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md)                                                                                                                                                  | Si |

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

Si introducimos como valor a asignar una [Macro de base de datos](/digi3d-net/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md) el programa mostrará el nombre de la macro en el panel de atributos activos y el campo se configurará como un campo de sólo lectura. Al almacenar la geometría se almacenará el valor calculado.



## Características de la orden

| Tipo de orden                                    | [Orden interactiva](alinear.md)                                                                                                                                                                                                                                                                                          |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repite automáticamente                           | Si                                                                                                                                                                                                                                                                                                                       |
| Opción del menú donde aparece la orden           | Editar/Polilíneas/Alinear los vértices de líneas (2 puntos)                                                                                                                                                                                                                                                              |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asignada ninguna barra de herramientas_                                                                                                                                                                                                                                                             |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                               |
| Variables relacionadas                           | [DA](/digi3d-net/referencia/ventana-de-dibujo/variables/d/da.md) |
