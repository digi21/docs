# EDITAR\_XYZ

Modifica la posición tridimensional \(X, Y, Z\) de los vértices de un elemento.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden trabaja igual que la orden [EDITAR](EDITAR.html), variando ahora que cuando se modifique un vértice de la entidad, dicho vértice tomará la cota que se tenga en ese momento activa. El valor activo se establece con la orden [Z](Z.html), o bien por la entrada del dato a través del restituidor.

* Pulsando la tecla + se pasa al vértice siguiente en el sentido de avance.
* Pulsando la tecla - se retrocede al vértice anterior.
* Pulsando la tecla \* se modifica la posición del vértice de modo que los segmentos que se unen en él formen un ángulo recto.
* Pulsando la tecla Insert se añade un nuevo vértice en la posición del cursor normal.
* Pulsando la tecla Supr se elimina el vértice en el que estuviese el cursor de edición.
* Pulsando la tecla Espacio \(barra espaciadora\) se aceptan las modificaciones.
* Pulsando la tecla Esc se anula la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en XYZ |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

