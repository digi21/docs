# CAMB\_COD\_R
<!-- id: camb-cod-r -->

Cambia el código por recinto topológico.

## Parámetros

No admite parámetros.

## Observaciones

La orden requiere una topología temporal creada, por ejemplo con la orden [FORMAR\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md). Si no la hay, muestra un mensaje de error y termina.

1. Pulsa el botón de datos dentro de un recinto para seleccionarlo. Mantén pulsada la tecla Control para añadir o quitar recintos de la selección.
2. Pulsa la barra espaciadora para aplicar el cambio. Pulsa Escape para cancelar la orden.

La orden sustituye por el primer código activo el código de las entidades que forman el contorno exterior de los recintos seleccionados. Si una entidad tiene varios códigos, la orden muestra un cuadro de diálogo para elegir el código que se sustituye.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-cod-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[RENOMCOD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md) |
| Nombre interno | {2D62711E-182D-43e9-BA19-4DFC7CE81D11} |

