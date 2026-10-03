# CAMB\_JT2

Modifica la justificación de uno o varios textos existentes en el dibujo, pero sin modificar su posición.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Códigos de los textos a modificar. Cada código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Si |

La justificación que se asigna es el valor de la variable [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

## Observaciones

Antes de ejecutar esta orden hay que establecer la justificación de texto a la deseada, con la orden [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

Formas de ejecutar CAMB\_JT2:

* Sin parámetros: la orden solicita que selecciones los textos. Admite selección múltiple.
* Con parámetros: la orden modifica sin pedir datos todos los textos visibles, no borrados y dentro de la zona de interés que tengan alguno de los códigos indicados.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-jt2.md) sin parámetros; [orden inmediata](camb-jt2.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CAMB\_AT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CAMB\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Nombre interno | {438DD10F-8817-4d33-B1D7-406DA30F19BF} |

