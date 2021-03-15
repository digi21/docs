# PONE\_ALTURA

Coloca un texto con el valor de la diferencia en altura entre dos puntos que registrará el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo \([AA](AA.html)\) | Número real | Si |
| 2 | Altura de texto \([AT](AT.html)\) | Número real | Si |
| 3 | Código \([COD](COD.html)\) | Identificador del código | Si |
| 4 | Distancia activa \([DA](DA.html)\) | Número real | Si |
| 5 | Justificación de texto \([JT](JT.html)\) | Número real | Si |
| 6 | Número de decimales \([NDEC](NDEC.html)\) | Número real | Si |

## Observaciones

El texto se situará con justificación inferior izquierda sobre el punto de dato que se indique con el cursor.

El texto tendrá como ángulo de orientación, altura y ángulo de inclinación los valores que se encuentren activos en las variables AA, AT y JT, respectivamente. El número de decimales que aparecerán en el texto será el determinado por la orden NDEC.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html), [AA](AA.html), [AT](AT.html), [DA](DA.html), [JT](JT.html), [NDEC](NDEC.html) |

