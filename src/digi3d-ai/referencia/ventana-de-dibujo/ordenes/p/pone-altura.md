# PONE\_ALTURA

Coloca un texto con el valor de la diferencia en altura entre dos puntos que registrará el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo \([AA](/digi3d-net/referencia/ventana-de-dibujo/variables/a/aa.md) | Número real | Si |
| 2 | Altura de texto \([AT](/digi3d-net/referencia/ventana-de-dibujo/variables/a/at.md) | Número real | Si |
| 3 | Código \([COD+](/digi3d-net/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) | Identificador del código | Si |
| 4 | Distancia activa \([DA](/digi3d-net/referencia/ventana-de-dibujo/variables/d/da.md) | Número real | Si |
| 5 | Justificación de texto \([JT](/digi3d-net/referencia/ventana-de-dibujo/variables/j/jt.md) | Número real | Si |
| 6 | Número de decimales \([NDEC](/digi3d-net/referencia/ventana-de-dibujo/variables/n/ndec.md) | Número real | Si |

## Observaciones

El texto se situará con justificación inferior izquierda sobre el punto de dato que se indique con el cursor.

El texto tendrá como ángulo de orientación, altura y ángulo de inclinación los valores que se encuentren activos en las variables AA, AT y JT, respectivamente. El número de decimales que aparecerán en el texto será el determinado por la orden NDEC.

## Características de la orden

| Tipo de orden | [Orden interactiva](pone-altura.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-net/referencia/ventana-de-dibujo/variables/r/repite.md) |

