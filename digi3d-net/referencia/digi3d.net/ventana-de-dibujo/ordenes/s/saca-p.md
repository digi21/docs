# SACA\_P

Coloca un punto a una distancia activa DA de un texto que ya está en el dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa \([DA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/DA.html)\) | Número real | Si |
| 2 | Código punto \([COD](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/COD.html)\) | Identificador del código | Si |
| 3 | Código texto \([COD](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/COD.html)\) | Identificador del código | Si |

## Observaciones

Esta orden es de gran utilidad cuando se han perdido puntos y necesitamos volver a colocarlos al lado de un texto.

La distancia a la que se situará el punto se contará a partir de la esquina inferior izquierda del texto, la distancia activa principal se contará en el mismo sentido que el texto introducido y la distancia activa secundaria se registrará en el sentido perpendicular a dicho texto.

Puedes ejecutar la orden desde la línea de comandos con la siguiente secuencia:

`saca_p=<código>`

## Características de la orden

| Tipo de orden | [Orden interactiva](saca-p.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/DA.html), [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/REPITE.html) |

