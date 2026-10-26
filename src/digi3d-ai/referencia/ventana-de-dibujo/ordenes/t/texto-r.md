# TEXTO\_R
<!-- id: texto-r -->

Inserta un texto en el dibujo en la dirección que indiques.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Texto a insertar. Todo lo que sigue al nombre de la orden forma el texto, incluidos los espacios | Texto | Sí |

Si no se introducen parámetros, la orden solicita el texto a insertar en la barra de mensajes. Si se introduce el parámetro, la orden no solicita el texto.

## Observaciones

1. Pulsa el pulsador de datos en el punto de inserción del texto.
2. Mueve el cursor: el texto gira en la dirección que va del punto de inserción al cursor.
3. Pulsa el pulsador de datos para fijar la dirección e insertar el texto.

El texto se crea con los códigos activos, la altura [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) y la justificación [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md). Después de fijar el punto de inserción, ya no puedes modificar el texto en la barra de mensajes. La autonumeración funciona igual que en la orden [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md).

Si la variable [TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) está activada, la orden coloca el texto en un plano vertical, con la línea base (la línea sobre la que se apoyan los caracteres) horizontal y en la dirección que va del punto de inserción al cursor.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Dibujar/Texto con dos puntos |
| Barra de herramientas en la que aparece la orden | Textos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — factor de autonumeración<br>[FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — formato del texto cuando se usa AUTONUM<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada<br>[TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — coloca el texto en un plano vertical |
| Órdenes relacionadas | [1TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/1/1-texto.md)<br>[TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Nombre interno | {A220017C-F462-4b80-8752-4F4981789765} |

