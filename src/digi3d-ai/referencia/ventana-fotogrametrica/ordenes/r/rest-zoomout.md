# REST\_ZOOM\_OUT
<!-- id: rest-zoomout -->

Disminuye el factor de Zoom de las imágenes que se visualizan en la pantalla estereoscópica.

## Parámetros

No admite parámetros.

## Observaciones

La orden divide el factor de zoom entre 2.

El factor de zoom activo en cada momento aparece en la parte inferior de la Ventana Estereoscópica.

Por debajo de 1, el factor se ajusta al nivel piramidal de la imagen más cercano \(1/2, 1/4, 1/8...\), así que el factor mínimo depende de los niveles piramidales que tengan las imágenes cargadas.

Con los sensores Point Cloud y Ortofoto estereoscópica la orden no cambia el factor de zoom: esos sensores gestionan su propia vista.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ventana fotogramétrica/Zoom de alejar |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [REST\_ZOOM\_IN](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoomin.md)<br>[REST\_ZOOM1X1](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoom-1-x-1.md)<br>[REST\_ZOOME](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/r/rest-zoome.md)<br>[ZOOM\_MEMORIA](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/z/zoom_memoria.md) |
| Nombre interno | {3C418000-B8CC-4a2c-BF70-768FECAFBBA5} |

