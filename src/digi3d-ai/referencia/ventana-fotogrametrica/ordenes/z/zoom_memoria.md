# ZOOM\_MEMORIA

Almacena el zoom activo y cambia al previo memorizado en caso de ejecutarse por segunda vez o más.

## Parámetros

| Parámetro | Comportamiento de la orden |
| :--- | :--- |
| 0 | Desactiva la visualización |
| 1 | Activa la visualización |

## Observaciones

Esta orden itera en la ventana fotogramétrica entre dos factores de zoom. Cada vez que se ejecuta memoriza el zoom anterior y cambia el factor de zoom por el anterior memorizado, de manera que es muy rápido cambiar entre dos factores de zoom para por ejemplo tener uno de detalle y otro de velocidad.

## Características de la orden

| Tipo de orden |  |
| :--- | :--- |
| Repite automáticamente |  |
| Opción del menú donde aparece la orden |  |
| Barra de herramientas en la que aparece la orden |  |
| Extensión |  |
| Variables relacionadas |  |
| Órdenes relacionadas | [REST\_ZOOM\_IN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomin.md)<br>[REST\_ZOOM\_OUT](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomout.md)<br>[REST\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[REST\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md) |

