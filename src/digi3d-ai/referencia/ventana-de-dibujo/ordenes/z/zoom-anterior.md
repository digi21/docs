# ZOOM\_ANTERIOR
<!-- id: zoom-anterior -->

Restaura la vista que tenía la ventana de dibujo antes del último cambio de vista.

## Parámetros

No admite parámetros.

## Observaciones

La ventana de dibujo guarda la vista anterior cuando se desplaza la vista o se ejecuta un zoom a una zona (por ejemplo, con [ZOOMV](zoomv.md), [ZOOME](zoome.md), [ZOOMP](zoomp.md) o [ZOOM\_ENTIDAD](zoom-entidad.md)). Las órdenes que solo cambian el factor de zoom ([ZOOM+](zoom-mas.md), [ZOOM-](zoom-menos.md), [ZOOMIN](zoomin.md), [ZOOMOUT](zoomout.md)) y la rueda del ratón no la guardan, salvo que se active la opción [ZOOM\_ANTERIOR incluye los cambios del factor de zoom](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/zoom-anterior-incluye-factor-zoom.md) del cuadro de diálogo de configuración.

La orden guarda a su vez la vista que sustituye, así que si la ejecutas dos veces seguidas vuelves a la vista inicial. Si todavía no hay ninguna vista guardada, la orden no hace nada.

## Características de la orden

| Tipo de orden | [Orden inmediata](zoom-anterior.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Zooms/Zoom anterior |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ZOOM\_ENTIDAD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md)<br>[ZOOM2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom2p.md)<br>[ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md)<br>[ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md)<br>[ZOOMV](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomv.md) |
| Nombre interno | {62F4D239-8713-438A-AB00-EEFDDF499ACF} |
