# CAMB\_AA

Asigna el ángulo activo a la rotación de uno o varios textos o puntos del dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de las entidades a modificar. Puede ser `#etiqueta` para indicar todos los códigos con esa etiqueta | Si |
| 2 | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), como una cadena de letras. En esta orden solo tienen efecto `P` puntos, `T` textos y `*` ambos. Por defecto, ambos | Si |

Sin parámetros, la orden solicita que selecciones los textos o puntos. Admite selección múltiple.

Con parámetros, la orden modifica sin pedir datos todos los textos y puntos visibles, no borrados y dentro de la zona de interés que tengan el código indicado.

## Observaciones

Antes de ejecutar la orden debes asignar el nuevo ángulo activo con la orden [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-aa.md) sin parámetros; [orden inmediata](camb-aa.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | Editar/Textos/Cambiar ángulo activo de texto |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_AT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-at.md)<br>[CAMB\_ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-esc-act.md)<br>[CAMB\_JT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt.md)<br>[CAMB\_JT2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-jt2.md)<br>[R\_PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md)<br>[R\_TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-texto.md) |
| Nombre interno | {574ECF13-972A-4efb-A037-6E036D1036D2} |

