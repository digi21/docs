# RECONOCER\_VOZ
<!-- id: reconocer-voz -->

Activa o desactiva el análisis de voz en tiempo real.

## Parámetros


| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor que indica si activar o desactivar el análisis de voz. |Si no se especifica ningún parámetro, el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable booleana está activada o desactivada.| Sí |


## Observaciones

Si RECONOCER_VOZ está activada, el programa escucha órdenes por el micrófono del ordenador. Si reconoce alguna de las órdenes especificadas en la pestaña [Reconocimiento de voz](../../../editor-de-tablas-de-codigos/pestanas/reconocimiento-de-voz.md) del programa [Editor de tablas de códigos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/), el programa ejecuta la orden reconocida.

## Características de la orden

| Tipo de orden | [Variable booleana](/digi3d-ai/referencia/ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Reconocer voz |
| Barra de herramientas en la que aparece la orden | Reconocimiento de voz. |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Nombre interno | {69A21D20-56F4-4FBE-B484-3A418E313F3A} |

