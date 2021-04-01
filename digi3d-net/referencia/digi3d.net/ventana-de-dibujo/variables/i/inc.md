# INC

Establece como incremento de registro activo el valor que indique el usuario al ejecutar esta orden.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |
| 2 | Distancia entre dos puntos | Número real | Si |

### Ejemplos

INC=27

Asigna como incremento de registro el valor 27

INC=?

Muestra el valor actual del incremento de registro

## Observaciones

El incremento de registro representa la distancia de registro de puntos cuando la entrada de datos se realiza en modo contínuo.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

