# AUTOMODOB
<!-- id: automodob -->

Activa o desactiva el modo de búsqueda automático.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Modo de búsqueda automático |Si no especificas ningún parámetro, la variable booleana cambia de Activado a Desactivado o de Desactivado a Activado.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable está activada o desactivada.| Sí |

## Observaciones

Antes de activar el modo de búsqueda automático, especifica la tabla de modo de búsqueda que se va a utilizar mediante la orden [PARAMETROS\_AUTO\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md).  
Puedes activar también el modo de búsqueda exhaustivo, que evitará que hagas tentativo en entidades que no estén especificadas en la tabla de búsqueda. La orden para activar el modo de búsqueda exhaustivo es [AUTOMODOB\_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md).

## Características de la orden

| Tipo de orden | Variable booleana |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [AUTOMODOB\_EXHAUSTIVO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[CAMB\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md)<br>[PARAMETROS\_AUTO\_MODOB](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-auto-modob.md) |
| Nombre interno | {23F027FB-FAF0-4a2b-88BB-7FCF42E433CA} |

