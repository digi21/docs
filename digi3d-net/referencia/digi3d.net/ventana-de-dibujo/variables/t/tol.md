# TOL

Establece el _factor de tolerancia_ en el proceso de [generalización](tol.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |
| 2 | Distancia entre dos puntos | Número real | Si |

### Ejemplos

`TOL=10`

Asigna como factor de tolerancia el valor 10 m.

`TOL=?`

Muestra el valor actual del factor de tolerancia

## Observaciones

El valor del _factor de tolerancia_ debe ser introducido en metros.

Al generalizar los puntos que componen una entidad, la función comprueba si la distancia de un punto al segmento definido por el anterior y siguiente, es menor o igual al valor de tolerancia activo:

* Si es así, este punto se elimina del fichero.
* En caso contrario se graban sus coordenadas.

También se considera el valor de la tolerancia angular dado por la orden [TOL\_ANG](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/t/TOL_ANG.html).

El proceso de generalizar, se ejecuta con todos y cada uno de los puntos de una entidad.

## Características de la orden

| Tipo de orden | [Variable real](tol.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/variables/t/REPITE.html) |

