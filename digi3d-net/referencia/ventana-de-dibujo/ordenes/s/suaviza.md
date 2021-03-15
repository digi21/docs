# SUAVIZA

Suaviza la forma geométrica de un elemento lineal existente en el dibujo.

## Parámetros

La orden SUAVIZA se puede ejecutar especificando el parámetro de código, es decir, si deseas suavizar todas las entidades que tengan un cierto código la entrada a la orden sería:

`SUAVIZA=020200`

## Observaciones

La orden necesita que se especifique el elemento, cuya selección se realizará de forma gráfica. Así, al llamar a la orden el programa solicita que el usuario seleccione la entidad.

El resultado es una línea sin quiebros y de contorno más suave, ya que la función rellena la entidad con nuevos puntos.

Los puntos nuevos que se crean, lo harán a una distancia igual al valor de la variable [INC](INC.html), por lo que a menor valor del incremento de registro mayor efecto de suavizado se consigue.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Suavizar |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [INC](INC.html), [S](S.html), [REPITE](REPITE.html) |

