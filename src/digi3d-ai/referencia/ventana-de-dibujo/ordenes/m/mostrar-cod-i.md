# MOSTRAR\_COD\_I
<!-- id: mostrar-cod-i -->

Muestra todos los códigos de los segmentos que forman un recinto topológico por inundación.

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina.

1. Haz clic dentro del recinto, que se rellenará de color. Mantén pulsada la tecla Control para seleccionar varios recintos.
2. Pulsa la barra espaciadora. La orden escribe los códigos de cada segmento del contorno junto al centro de ese segmento.

Para borrar los códigos y terminar la orden, pulsa la tecla Escape.

## Características de la orden

| Tipo de orden | [Orden interactiva](mostrar-cod-i.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [BORRA\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md) |
| Nombre interno | {53B84A11-7AE0-4a96-90C7-A0901AE59CFD} |

