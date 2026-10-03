# ZOOM\_MEMORIA

Vuelve al factor de zoom anterior de la ventana fotogramétrica.

## Parámetros

No admite parámetros.

## Observaciones

Digi3D.AI memoriza los dos últimos factores de zoom que se aplican en la ventana fotogramétrica. La orden aplica el penúltimo. Ese cambio cuenta a su vez como un cambio de zoom, así que al ejecutarla de nuevo vuelve al factor de antes: la orden alterna entre dos factores de zoom, por ejemplo uno de detalle y otro para desplazarse rápido.

Volver a aplicar el factor que ya es el último no cuenta como cambio de zoom. Así ocurre al abrir un modelo con el mismo factor con el que se cerró, al redibujar la ventana o, con [SINCRONIZAR\_ZOOMS](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/s/sincronizar-zooms.md) activada, al aplicar el zoom en el resto de vistas.

Los dos factores se guardan en el registro de Windows, en los valores `FactorZoomA` y `FactorZoomB`, y el valor `ÍndiceFactorZoom` indica cuál de los dos es el último. Por eso se conservan al cerrar el programa. Si no hay valores guardados, los dos factores valen 1.

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

