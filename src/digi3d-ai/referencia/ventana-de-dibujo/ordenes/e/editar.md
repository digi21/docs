# EDITAR
<!-- id: editar -->

Modifica la posición planimétrica \(X, Y\) de los vértices de un elemento.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones una línea o un polígono del modelo actual. El cursor de edición se sitúa en el vértice más cercano al punto de selección. Cada vez que pulsas el botón de datos, la orden asigna al vértice la X y la Y del cursor y conserva su Z. Si la opción *Desplazar automático* de la configuración de la orden está activada (valor por defecto), el cursor de edición pasa al vértice siguiente en el sentido del último desplazamiento.

Puedes moverte a lo largo de la entidad y realizar diferentes modificaciones, utilizando las siguientes teclas:

* Pulsando la tecla + se pasa al vértice siguiente en sentido de avance.
* Pulsando la tecla - se pasa al vértice anterior.
* Pulsando la tecla \* se modifica la posición del vértice de modo que los segmentos que se unen en él formen un ángulo recto.
* Pulsando la tecla Insert se añade un nuevo vértice en la posición del cursor normal.
* Pulsando la tecla Supr se elimina el vértice en el que estuviese el cursor de edición. Si la entidad tiene un solo vértice, la tecla Supr no lo elimina.
* Pulsando la tecla S se activa o desactiva el seguimiento: el vértice sigue al cursor hasta que pulsas el botón de datos. Si desactivas el seguimiento con la tecla S, el vértice vuelve a su posición anterior.
* Pulsando la tecla Espacio \(barra espaciadora\) se aceptan las modificaciones.
* Pulsando la tecla Esc se anula la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](editar.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en XY |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EDITAR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md)<br>[EDITAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md) |
| Nombre interno | {50C7F83A-9C55-44c7-A975-77107E12CF1A} |

