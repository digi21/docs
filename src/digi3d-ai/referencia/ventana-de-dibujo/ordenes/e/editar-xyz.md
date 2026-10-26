# EDITAR\_XYZ
<!-- id: editar-xyz -->

Modifica la posición tridimensional \(X, Y, Z\) de los vértices de un elemento.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden trabaja igual que la orden [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md), pero al pulsar el botón de datos asigna al vértice las tres coordenadas X, Y, Z del cursor.

* Pulsa la tecla + para pasar al vértice siguiente en el sentido de avance.
* Pulsa la tecla - para retroceder al vértice anterior.
* Pulsa la tecla \* para modificar la posición del vértice de modo que los segmentos que se unen en ese vértice formen un ángulo recto.
* Pulsa la tecla Insert para añadir un nuevo vértice en la posición del cursor normal.
* Pulsa la tecla Supr para eliminar el vértice en el que se encuentra el cursor de edición.
* Pulsa la tecla S para activar o desactivar el seguimiento: el vértice sigue al cursor hasta que pulsas el botón de datos. Si desactivas el seguimiento con la tecla S, el vértice vuelve a la posición que tenía antes de activar el seguimiento.
* Pulsa la tecla Z para introducir en la barra de estado un valor de Z, que se asigna al vértice sin cambiar las coordenadas X e Y del vértice.
* Pulsa la tecla Espacio \(barra espaciadora\) para aceptar las modificaciones.
* Pulsa la tecla Esc para anular la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en XYZ |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md)<br>[EDITAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md)<br>[EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editor.md) |
| Nombre interno | {434E3B43-FC90-477f-B819-7552284150B6} |

