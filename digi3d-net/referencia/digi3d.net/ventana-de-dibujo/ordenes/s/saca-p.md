# SACA\_P

Coloca un punto a una distancia activa DA de un texto que ya está en el dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa \([DA](DA.html)\) | Número real | Si |
| 2 | Código punto \([COD](COD.html)\) | Identificador del código | Si |
| 3 | Código texto \([COD](COD.html)\) | Identificador del código | Si |

## Observaciones

Esta orden es de gran utilidad cuando se han perdido puntos y necesitamos volver a colocarlos al lado de un texto.

La distancia a la que se situará el punto se contará a partir de la esquina inferior izquierda del texto, la distancia activa principal se contará en el mismo sentido que el texto introducido y la distancia activa secundaria se registrará en el sentido perpendicular a dicho texto.

Puedes ejecutar la orden desde la línea de comandos con la siguiente secuencia:

`saca_p=<código>`

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](DA.html), [REPITE](REPITE.html) |

