# SINCRONIZAR\_ZOOMS
<!-- id: sincronizar-zooms -->

Ésta orden es de utilidad al tener abiertas varias vistas estereoscópicas.  
Con la sincronización activada, cada cambio de zoom se aplica a la vez en todas las vistas abiertas.

## Parámetros

| Parámetro | Comportamiento de la orden |
| :--- | :--- |
| Sin parámetro | Alterna: activa la sincronización si está desactivada y la desactiva si está activada |
| 0 | Desactiva la sincronización |
| Distinto de 0 | Activa la sincronización |

### Ejemplo:

`SINCRONIZAR_ZOOMS=1`

## Observaciones

Al activar la sincronización, la orden aplica a todas las vistas el factor de zoom de la vista activa.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Múltiples vistas/Sincronizar Zooms |
| Barra de herramientas en la que aparece la orden | Sincronización de vistas |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [PARALIZAR](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/p/paralizar.md)<br>[SINCRONIZAR\_VISTAS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-vistas.md) |
| Nombre interno | {D3984B08-4B0C-4033-A01D-DA4148584EC9} |

