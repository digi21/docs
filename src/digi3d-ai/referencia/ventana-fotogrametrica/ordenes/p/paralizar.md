# PARALIZAR
<!-- id: paralizar -->

La orden PARALIZAR permite paralizar una o varias de las vistas estereoscópicas que tengas abiertas al ejecutar la orden.

## Parámetros

| Parámetro | Comportamiento de la orden |
| :--- | :--- |
| Sin parámetro | Alterna: paraliza la vista si no lo está y la libera si lo está |
| 0 | Libera la vista |
| Distinto de 0 | Paraliza la vista |

### Ejemplo:

`PARALIZAR=1`

## Observaciones

Haz clic en la barra de título de la vista que quieras paralizar para activar esa vista antes de ejecutar la orden.  
La orden PARALIZAR es incompatible con la orden [SINCRONIZAR_VISTAS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md), porque ambas órdenes **no** pueden estar activadas al mismo tiempo.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Múltiples vistas/Paralizar vista |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [SINCRONIZAR\_VISTAS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md)<br>[SINCRONIZAR\_ZOOMS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-zooms.md) |
| Nombre interno | {C0CF2C67-9809-417c-9691-58FBB294626C} |

