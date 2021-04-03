# TOL\_ANG

Establece el _factor de tolerancia angular_ en el proceso de [generalización](tol-ang.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |
| 2 | Distancia entre dos puntos | Número real | Si |

### Ejemplos

`TOL_ANG=45`

Asigna como tolerancia lineal el valor 45

`TOL_ANG=?`

Muestra el valor actual de la tolerancia angular

## Observaciones

El valor de este factor debe especificarse en unidades centesimales.

Este parámetro se utiliza en la generalización para comprobar en un punto, si el valor de la tangente del ángulo formado por las rectas anterior y siguiente, supera el valor de la tolerancia angular. En este caso, el punto no se elimina aunque no supere la [tolerancia lineal](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/t/TOL.html), para mantener la forma del elemento.

El proceso de generalizar se ejecuta con todos y cada uno de los puntos de una entidad.

## Características de la orden

| Tipo de orden | [Variable real](tol-ang.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/t/REPITE.html) |

