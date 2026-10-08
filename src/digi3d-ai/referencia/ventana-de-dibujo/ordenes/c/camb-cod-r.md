# CAMB\_COD\_R
<!-- id: camb-cod-r -->

Cambia el código por recinto topológico.

## Parámetros

No admite parámetros.

## Observaciones

La orden requiere una topología temporal creada, por ejemplo con la orden [FORMAR\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/formar-poligonos.md). Si no la hay, muestra un mensaje de error y termina.

1. Pulsa el botón de datos dentro de un recinto para seleccionarlo. Mantén pulsada la tecla Control para añadir o quitar recintos de la selección.
2. Pulsa el botón de tentativo para sustituir el último recinto seleccionado por el siguiente recinto que contiene el cursor. Sin ningún recinto seleccionado, el botón de tentativo actúa como el botón de datos. Pulsa el botón de reset para vaciar la selección.
3. Pulsa la barra espaciadora para aplicar el cambio. La orden termina después de aplicarlo. Pulsa Escape para cancelar la orden.

La orden cambia las entidades que forman el contorno exterior de los recintos seleccionados:

1. Reúne los códigos a cambiar. De una entidad con un solo código toma ese código. De una entidad con varios códigos no toma ninguno si alguno de ellos ya está entre los reunidos; si no lo está, muestra el cuadro de diálogo [Seleccionar código](camb-cod.md), con el título **Selecciona el código a cambiar**, para elegir uno.
2. En cada entidad, sustituye por el primer código activo todos los códigos que están entre los reunidos. Si coinciden varios, la entidad se queda con un solo código activo en su lugar.

Si pulsas **Cancelar** en el cuadro de diálogo **Seleccionar código**, la orden no cambia ninguna entidad y termina.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-cod-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Cambiar códigos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BORRA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[RENOMCOD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-r.md) |
| Nombre interno | {2D62711E-182D-43e9-BA19-4DFC7CE81D11} |

