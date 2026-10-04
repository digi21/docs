# CAMB\_ESC\_ACT
<!-- id: camb-esc-act -->

Asigna la escala activa a uno o varios puntos del dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

## Observaciones

Antes de ejecutar la orden debes asignar la escala activa con la orden [ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md).

Sin parámetros, la orden solicita que selecciones los puntos. Admite selección múltiple.

Con parámetros, la orden modifica sin pedir datos todos los puntos visibles, no borrados y dentro de la zona de interés que tengan alguno de los códigos indicados.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-esc-act.md) sin parámetros; [orden inmediata](camb-esc-act.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | Si, cuando se ejecuta sin parámetros |
| Opción del menú donde aparece la orden | Editar/Puntos/Cambiar Escala Activa |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md) — escala activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CAMB\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-aa.md)<br>[R\_PUNTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/r-punto.md) |
| Nombre interno | {40EC28D8-0088-4700-AFB2-82D1F126D77A} |
