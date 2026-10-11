# UM
<!-- id: um -->

Borra los últimos puntos de la entidad que se está registrando en el momento de llamar a la orden.

## Parámetros

No admite parámetros.

## Observaciones

Hay que definir el segmento hasta el que se desea borrar los puntos digitalizados, una vez borrados, el programa sigue ejecutando la orden con la que se estaba digitalizando.

La orden solo funciona si la orden activa es [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md). En otro caso emite un sonido de error y termina.

Esta orden sólo tiene efecto mientras la entidad no se finalice. Es similar a la orden [U](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md), con la diferencia de que la orden _UM_ puede borrar varios puntos de una sola vez.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Borrar un segmento de la línea que estás dibujando/Múltiples segmentos (1 punto) |
| Barra de herramientas en la que aparece la orden | Finalización de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [U](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u.md)<br>[U2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/u2.md) |
| Nombre interno | {395EB869-DC3F-450e-8271-913F96FE9F2F} |

