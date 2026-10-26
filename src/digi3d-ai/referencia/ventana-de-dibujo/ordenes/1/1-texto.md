# 1TEXTO
<!-- id: 1-texto -->

Inserta el texto pasado por parámetros \(o introducido en la barra de mensajes\) una única vez independientemente del estado del conmutador [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md).

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Texto a insertar | Sí |

## Observaciones

Si no se pasa ningún parámetro, la orden solicitará en la barra de mensajes el texto a introducir. Si la variable [AUTONUM](../../variables/a/autonum.md) es distinta de 0, el texto propuesto es el número del último texto insertado más AUTONUM, con el formato de [FORMATO\_AUTONUM](../../variables/f/formato-autonum.md).

La orden solicitará que [introduzcas](../../introduccion-de-coordenadas.md) las coordenadas del punto de inserción del texto. El texto se creará con la [altura de textos](../../variables/a/at.md), el [ángulo activo](../../variables/a/aa.md) y la [justificación de textos](../../variables/j/jt.md) configurados en el momento de introducir el punto.

Si la variable [TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) está activada, la orden coloca el texto perpendicular a la dirección de la mirada de la cámara y derecho en la pantalla, igual que la orden [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md).

Si el texto está vacío, la orden no inserta nada al introducir el punto.

## Características de la orden

| Tipo de orden | [Orden interactiva](../../../ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) — factor de autonumeración<br>[FORMATO\_AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) — formato del texto cuando se usa AUTONUM<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada<br>[TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) — orienta el texto con la cámara |
| Órdenes relacionadas | [TEXTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md)<br>[TEXTO\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-editable.md)<br>[TEXTO\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r.md)<br>[TEXTO\_R\_EDITABLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto-r-editable.md) |
| Nombre interno | {FC032D16-31FD-48e5-8646-4481E6F12D1A} |

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/1TEXTO.mp4" caption="" type="video/mp4"></video>

