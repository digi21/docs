# CONTROL\_CALIDAD\_AL\_FINALIZAR\_ENTIDAD

Activa o desactiva el análisis de controles de calidad en tiempo real al finalizar de digitalizar una entidad.

## Parámetros

| Número de parámetro | Descripción                                                                                  | Valores                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Opcional |
| ------------------- | -------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| 1                   | Valor que indica si activar o desactivar el análisis de controles de calidad en tiempo real. | <p>Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo <em>Activado</em> a <em>Desactivado</em> y de <em>Desactivado</em> a <em>Activado</em>.</p><p><strong>0</strong>: Para desactivar la variable booleana.</p><p><strong>1</strong>: Para activar la variable booleana.</p><p><strong>?</strong>: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada.</p> | Si       |

## Observaciones

El análisis se realiza únicamente en las entidades que tengan un código para el cual se ha activado la propiedad **Analizar control de calidad**.

## Características de la orden

| Tipo de variable                                 | [Booleana](../../../ordenes/variables/variables-booleanas.md)     |
| ------------------------------------------------ | ----------------------------------------------------------------- |
| Repite automáticamente                           | No                                                                |
| Opción del menú donde aparece la orden           | _Modelo semántico/Analizar modelo semántico al finalizar entidad_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no está asignada a ninguna barra de herramientas._    |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                        |
