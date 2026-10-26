# CONTROL\_CALIDAD\_AL\_FINALIZAR\_ENTIDAD
<!-- id: control-calidad -->

Activa o desactiva el análisis de controles de calidad en tiempo real al terminar de digitalizar una entidad.

## Parámetros

| Número de parámetro | Descripción                                                                                  | Valores                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Opcional |
| ------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| 1                   | Valor que indica si activar o desactivar el análisis de controles de calidad en tiempo real. |Si no se especifica ningún parámetro, el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.<br>**0**: Para desactivar la variable booleana.<br>**1**: Para activar la variable booleana.<br>**?**: Para consultar el valor de la variable booleana. Aparecerá un globo que indica si la variable booleana está activada o desactivada.| Sí       |

## Observaciones

El análisis se realiza únicamente en las entidades que tengan un código con controles de calidad asignados y para el cual se ha activado la propiedad **Analizar control de calidad al digitalizar**.

Si un control de calidad detecta un error, Digi3D.AI muestra el cuadro [Error de control de calidad](../../../cuadros-de-dialogo/error-de-control-de-calidad.md), que pregunta si se almacena la geometría.

Por defecto está activada.

## Características de la orden

| Tipo de variable                                 | [Booleana](../../../ordenes/variables/variables-booleanas.md)     |
| ------------------------------------------------ | ----------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                |
| Opción del menú donde aparece la orden           | Control de calidad/Analizar control de calidad al digitalizar entidad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                        |
| Implementación | Nativa |
| Nombre interno | {09E80E6F-2ED2-4FDA-9DD1-2E3826A3F0C3} |
