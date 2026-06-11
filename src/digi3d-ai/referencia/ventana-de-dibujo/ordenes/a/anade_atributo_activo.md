# ANADE\_ATRIBUTO\_ACTIVO

Añade un atributo al panel [atributos-activos.md](../../../paneles/atributos-activos.md).

## Parámetros

| 1 | Nombre del campo         | Cadena de caracteres                                                                                                                                                                                                                                                                                                    | No |
| - | ------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -- |
| 2 | Tipo de valor a almacena | 0. Cadena de caracteres  
1. Byte con signo  
2. Byte sin signo  
3. Entero corto con signo  
4. Entero corto sin signo  
5. Entero con signo  
6. Entero sin signo  
7. Entero de 64 bits con signo  
8. Entero de 64 bits sin signo  
9. Coma flotante simple  
10. Coma flotante doble  
11. Fecha| No |
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

Si introducimos como valor a asignar una [Macro de base de datos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/base-de-datos/macros-de-base-de-datos.md) el programa mostrará el nombre de la macro en el panel de atributos activos y el campo se configurará como un campo de sólo lectura. Al almacenar la geometría se almacenará el valor calculado.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](alinear.md)                                                                                                                                                                                                                                                                                          |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Repite automáticamente                           | Si                                                                                                                                                                                                                                                                                                                       |
| Opción del menú donde aparece la orden           | Editar/Polilíneas/Alinear los vértices de líneas (2 puntos)                                                                                                                                                                                                                                                              |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asignada ninguna barra de herramientas_                                                                                                                                                                                                                                                             |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                                                                                                                                                                               |
| Variables relacionadas                           | No tiene variables relacionadas |
| Nombre interno | {FE924FFF-1C80-4348-A9FE-A8856B72818D} |
