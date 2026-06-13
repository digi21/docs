# SUAVIZA\_SPLINE

Suaviza una línea creando una spline cúbica.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de las entidades a suavizar | Si |

## Observaciones

La orden SUAVIZA\_SPLINE se puede ejecutar especificando el parámetro de código, es decir, si deseas suavizar todas las entidades que tengan un cierto código la entrada a la orden sería:

`SUAVIZA_SPLINE=020200`

La orden necesita que se especifique el elemento, cuya selección se realizará de forma gráfica. Así, al llamar a la orden el programa solicita que el usuario seleccione la entidad.

El resultado es una línea sin quiebros y de contorno más suave, ya que la función rellena la entidad con nuevos puntos.

Los puntos nuevos que se crean, lo harán a una distancia igual al valor de la variable [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md), por lo que a menor valor del incremento de registro mayor efecto de suavizado se consigue.

## Características de la orden

| Tipo de orden | [Orden interactiva](suaviza-spline.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {78596F76-80D8-43E2-894C-08B07686BCD5} |

