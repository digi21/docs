# SUAVIZA\_SPLINE

Suaviza una línea creando una spline cúbica.

## Parámetros

La orden SUAVIZA\_SPLINE se puede ejecutar especificando el parámetro de código, es decir, si deseas suavizar todas las entidades que tengan un cierto código la entrada a la orden sería:

`SUAVIZA_SPLINE=020200`

## Observaciones

La orden necesita que se especifique el elemento, cuya selección se realizará de forma gráfica. Así, al llamar a la orden el programa solicita que el usuario seleccione la entidad.

El resultado es una línea sin quiebros y de contorno más suave, ya que la función rellena la entidad con nuevos puntos.

Los puntos nuevos que se crean, lo harán a una distancia igual al valor de la variable [INC](INC.html), por lo que a menor valor del incremento de registro mayor efecto de suavizado se consigue.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [S](S.html), [REPITE](REPITE.html) |

