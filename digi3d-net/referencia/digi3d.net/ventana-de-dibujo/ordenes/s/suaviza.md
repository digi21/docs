# SUAVIZA

Suaviza la forma geométrica de un elemento lineal existente en el dibujo.

## Parámetros

La orden SUAVIZA se puede ejecutar especificando el parámetro de código, es decir, si deseas suavizar todas las entidades que tengan un cierto código la entrada a la orden sería:

`SUAVIZA=020200`

## Observaciones

La orden necesita que se especifique el elemento, cuya selección se realizará de forma gráfica. Así, al llamar a la orden el programa solicita que el usuario seleccione la entidad.

El resultado es una línea sin quiebros y de contorno más suave, ya que la función rellena la entidad con nuevos puntos.

Los puntos nuevos que se crean, lo harán a una distancia igual al valor de la variable [INC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/INC.html), por lo que a menor valor del incremento de registro mayor efecto de suavizado se consigue.

## Características de la orden

| Tipo de orden | [Orden interactiva](suaviza.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Suavizar |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [INC](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/INC.html), [S](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/S.html), [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/REPITE.html) |

