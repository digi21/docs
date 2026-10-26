# EDITAR
<!-- id: editar -->

Modifica la posición planimétrica \(X, Y\) de los vértices de un elemento.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita que selecciones una línea o un polígono del modelo actual. El cursor de edición se sitúa en el vértice más cercano al punto de selección. Cada vez que pulsas el botón de datos, la orden asigna al vértice la X y la Y del cursor y conserva la Z del vértice. Si la opción *Desplazar automático* de la configuración de la orden está activada (valor por defecto), el cursor de edición pasa al vértice siguiente en el sentido del último desplazamiento.

Puedes moverte a lo largo de la entidad y realizar diferentes modificaciones, utilizando las siguientes teclas:

* Pulsa la tecla + para pasar al vértice siguiente en sentido de avance.
* Pulsa la tecla - para pasar al vértice anterior.
* Pulsa la tecla \* para modificar la posición del vértice de modo que los segmentos que se unen en ese vértice formen un ángulo recto.
* Pulsa la tecla Insert para añadir un nuevo vértice en la posición del cursor normal.
* Pulsa la tecla Supr para eliminar el vértice en el que se encuentra el cursor de edición. Si la entidad tiene un solo vértice, la tecla Supr no lo elimina.
* Pulsa la tecla S para activar o desactivar el seguimiento: el vértice sigue al cursor hasta que pulsas el botón de datos. Si desactivas el seguimiento con la tecla S, el vértice vuelve a la posición que tenía antes de activar el seguimiento.
* Pulsa la tecla Espacio \(barra espaciadora\) para aceptar las modificaciones.
* Pulsa la tecla Esc para anular la orden.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Editar vértices en XY |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [EDITAR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-xyz.md)<br>[EDITAR\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-z.md) |
| Nombre interno | {50C7F83A-9C55-44c7-A975-77107E12CF1A} |

