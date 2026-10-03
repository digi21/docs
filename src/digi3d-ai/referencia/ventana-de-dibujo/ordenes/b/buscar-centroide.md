# BUSCAR\_CENTROIDE

Localiza el centroide dentro de un recinto, después de haber cargado uno o varios topológicos.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden sólo se podrá ejecutar cuando haya uno o varios ficheros topológicos cargados en memoria. Si no hay ninguno, la orden muestra el aviso «No hay ningún archivo de topología cargado» y termina.

Cuando se tiene cargado el archivo o archivos topológicos y se ejecuta la orden _BUSCAR\_CENTROIDE_ el programa indicará al usuario que seleccione el área en la que buscar el centroide. Al mover el cursor, la orden resalta el recinto que hay bajo el cursor.

Al pulsar el botón de datos:

* Si el cursor no está dentro de ningún recinto, la orden quita el resaltado y sigue esperando.
* Si el cursor está dentro de un recinto con centroide, la orden lleva la vista al centroide y termina.
* Si el recinto no tiene centroide, la orden lleva la vista al centroide calculado automáticamente por la orden [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md), hace sonar el pitido de error, muestra un globo indicando que se ha seleccionado un polígono sin centroide y termina.

La forma de llevar la vista al centroide se elige en la categoría **Buscar centroide** del cuadro de configuración, opción **Tipo de zoom**: **Centrar la ventana en el centroide** (valor por defecto) o **Zoom al centroide**. Con un recinto sin centroide, la vista siempre se centra.

Pulsa el botón de reset para quitar el resaltado. Pulsa la barra espaciadora o Esc para terminar la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](buscar-centroide.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {6F6784EE-B46E-49ff-AC21-6BF418B4CA17} |

