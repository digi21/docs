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

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Zoom con memoria (dos últimos zooms) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [REST\_ZOOM\_IN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomin.md)<br>[REST\_ZOOM\_OUT](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomout.md)<br>[REST\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[REST\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md) |
| Nombre interno | {16C3724E-0398-44B4-9A3C-DB60B4DC6B38} |

