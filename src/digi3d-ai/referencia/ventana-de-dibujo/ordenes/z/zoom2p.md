# ZOOM2P
<!-- id: zoom2p -->

Permite desplazarnos con el ratón en la pantalla de DigiNG.

## Parámetros

No admite parámetros.

## Observaciones

El usuario deberá pinchar primero el punto para "agarrar" el dibujo en esa posición, a continuación se podrá mover el cursor sin soltar el botón izquierdo del ratón, y se soltará cuando el dibujo este situado como desea el usuario.

Mientras la orden está en curso, la variable [AUTO\_RATON](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md) está desactivada; al terminar, la orden restaura su valor anterior.

Al soltar el botón, [ZOOM\_ANTERIOR](zoom-anterior.md) puede devolver la vista a la posición que tenía al pulsarlo.

## Características de la orden

| Tipo de orden | [Orden interactiva](zoom2p.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Zooms/Desplazar la vista |
| Barra de herramientas en la que aparece la orden | Desplazamientos de ventana |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AUTO\_RATON](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md) — activa o desactiva el autozoom al usar el ratón<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ZOOM\_ANTERIOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-anterior.md)<br>[ZOOMA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zooma.md)<br>[ZOOMP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoomp.md) |
| Nombre interno | {C3B33B92-A260-421b-92BF-B3917240D97B} |

