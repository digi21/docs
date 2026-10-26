# EDITAR\_Z
<!-- id: editar-z -->

Modifica la coordenada Z de la entidad seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones una línea o un polígono del modelo actual y trabaja igual que la orden [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md), pero al pulsar el botón de datos asigna al vértice solo la Z del cursor y conserva las coordenadas X e Y del vértice. La Z del cursor se establece con la orden [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md), o bien por la entrada del dato a través del restituidor.

* Pulsa la tecla + para pasar al vértice siguiente en el sentido de avance.
* Pulsa la tecla - para retroceder al vértice anterior.
* Pulsa la tecla Insert para añadir un nuevo vértice en la posición del cursor normal.
* Pulsa la tecla Supr para eliminar el vértice en el que se encuentra el cursor de edición.
* Pulsa la tecla Z para introducir en la barra de estado un valor de Z, que se asigna al vértice.
* Pulsa la tecla Espacio \(barra espaciadora\) para aceptar las modificaciones.
* Pulsa la tecla Esc para anular la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en Z |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md)<br>[EDITAR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md) |
| Nombre interno | {FD6B1A6F-3CF1-4460-8A6F-011C17C5CA51} |

