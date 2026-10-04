# CAMB\_AT
<!-- id: camb-at -->

Modifica la altura de uno o varios textos del dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Códigos de los textos a modificar. Cada código puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Si |

Sin parámetros, la orden solicita que selecciones los textos. Admite selección múltiple.

Con parámetros, la orden modifica sin pedir datos todos los textos visibles, no borrados y dentro de la zona de interés que tengan alguno de los códigos indicados.

## Observaciones

Antes de ejecutar la orden debes asignar la nueva altura de texto con la orden [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-at.md) sin parámetros; [orden inmediata](camb-at.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | Editar/Textos/Cambiar altura de texto |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[CAMB\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[CAMB\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Nombre interno | {FFBB771C-E48F-4dac-B730-6CFA7DEBA468} |

