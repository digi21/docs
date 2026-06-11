# ANALIZAR\_MODELO\_SEMÁNTICO

Activa o desactiva el análisis de _Modelo semántico_ en tiempo real al finalizar de digitalizar una entidad.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor que indica si activar o desactivar el análisis de modelo semántico en tiempo real. | Si no se especifica ningún parámetro el valor de la variable booleana cambiará de modo *Activado* a *Desactivado* y de *Desactivado* a *Activado*.; **0**: Para desactivar la variable booleana.; **1**: Para activar la variable booleana.; **?**: Para consultar el valor de la variable booleana. Aparecerá un globo indicando si la orden está activada o desactivada. | Si |

## Observaciones

El análisis se realiza únicamente en las entidades que tengan un código para el cual se ha activado la propiedad **Analizar reglas de modelo semántico**.

## Características de la orden

| Tipo de varible | [Booleana](../variables-booleanas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Modelo semántico/Analizar modelo semántico al finalizar entidad_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no está asignada a ninguna barra de herramientas._ |
| Extensión | DigiNG.OrdenesStandard.dll |

