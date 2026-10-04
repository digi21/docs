# EDITAR\_XYZ
<!-- id: editar-xyz -->

Modifica la posición tridimensional \(X, Y, Z\) de los vértices de un elemento.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden trabaja igual que la orden [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md), pero al pulsar el botón de datos asigna al vértice las tres coordenadas X, Y, Z del cursor.

* Pulsando la tecla + se pasa al vértice siguiente en el sentido de avance.
* Pulsando la tecla - se retrocede al vértice anterior.
* Pulsando la tecla \* se modifica la posición del vértice de modo que los segmentos que se unen en él formen un ángulo recto.
* Pulsando la tecla Insert se añade un nuevo vértice en la posición del cursor normal.
* Pulsando la tecla Supr se elimina el vértice en el que estuviese el cursor de edición.
* Pulsando la tecla S se activa o desactiva el seguimiento: el vértice sigue al cursor hasta que pulsas el botón de datos. Si desactivas el seguimiento con la tecla S, el vértice vuelve a su posición anterior.
* Pulsando la tecla Z se solicita en la barra de estado un valor de Z, que se asigna al vértice conservando su X y su Y.
* Pulsando la tecla Espacio \(barra espaciadora\) se aceptan las modificaciones.
* Pulsando la tecla Esc se anula la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](editar-xyz.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en XYZ |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EDITAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar.md)<br>[EDITAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md)<br>[EDITOR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editor.md) |
| Nombre interno | {434E3B43-FC90-477f-B819-7552284150B6} |

