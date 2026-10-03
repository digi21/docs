# CAMB\_JT

Modifica la justificación de uno o varios textos existentes en el dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Códigos de los textos a modificar. Cada código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Si |

Sin parámetros, la orden solicita que selecciones los textos. Admite selección múltiple.

Con parámetros, la orden modifica sin pedir datos todos los textos visibles, no borrados y dentro de la zona de interés que tengan alguno de los códigos indicados.

La justificación que se asigna es el valor de la variable [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md):

| Valor | Posición |
| :--- | :--- |
| 0 | Sitúa el punto de inserción al SO del texto |
| 1 | Sitúa al punto de inserción al O del texto |
| 2 | Sitúa al punto de inserción al NO del texto |
| 3 | Sitúa al punto de inserción al N del texto |
| 4 | Sitúa al punto de inserción al NE del texto |
| 5 | Sitúa al punto de inserción al E del texto |
| 6 | Sitúa al punto de inserción al SE del texto |
| 7 | Sitúa al punto de inserción al S del texto |
| 8 | Sitúa al punto de inserción al Centro del texto |

## Observaciones

Antes de ejecutar esta orden hay que cambiar la justificación de testo a la deseada, con la orden [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).

Podemos cambiar la justificación a un texto en concreto o a los textos que tengan un código determinado con CAMB\_JT=&lt;código&gt;.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-jt.md) sin parámetros; [orden inmediata](camb-jt.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | Editar/Textos/Cambiar justificación de texto |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CAMB\_AT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CAMB\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Nombre interno | {EC867714-78A8-464f-ABC4-DC1A08990F49} |

