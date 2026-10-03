# VELOCIDAD

Modifica la velocidad del restituidor.

## Parámetros

| Parámetro | Número real |
| :--- | :--- |
| Velocidad en X y en Y | Si |
| Velocidad en Z | Si |

## Observaciones

Se puede establecer una velocidad para XY y otra diferente para Z.

El formato de la orden es el siguiente:

**VELOCIDAD=\[xy\] \[z\]**

Si no se especifica una velocidad para Z, se establece la misma velocidad que para XY.

### Ejemplos:

`VELOCIDAD=5.75`

Establece la velocidad de XY y Z a 5.75

`VELOCIDAD=5.75 4.22`

Establece la velocidad de XY a 5.75 y la de Z a 4.22

## Características de la orden

| Tipo de orden | Orden interactiva sin parámetros; orden inmediata con parámetros |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Velocidades/Asignar la velocidad...<br>Ventana fotogramétrica/Velocidades/Reiniciar |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ESCALAR\_VELOCIDAD](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/e/escalar-velocidad.md)<br>[VELOCIDAD\_MAS\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-xy.md)<br>[VELOCIDAD\_MAS\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-z.md)<br>[VELOCIDAD\_MENOS\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-xy.md)<br>[VELOCIDAD\_MENOS\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-z.md) |
| Nombre interno | {3BE1084C-E1BC-4b4f-AD45-611112560D6B} |

