# SIMB

Rellena el interior de una entidad superficial de contorno cerrado usando una trama de símbolos.

## Parámetros

Si no se especifica ningún parámetro, el sistema toma por defecto los valores cero y uno para [ángulo activo](AA.html) y [distancia activa](DA.html) respectivamente.

## Observaciones

La disposición de los símbolos depende de los valores que tengan asignados los parámetros [ángulo activo](AA.html) y [distancia activa](DA.html).

La posición de los símbolos coincidiría con las intersecciones de las rayas que se hubiesen obtenido al llamar a la orden [TRAMAR](TRAMAR.html), de forma que puedes distinguir dos conjuntos de símbolos.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo | Número real | Si |
| 2 | Distancia activa | Número real | Si |

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Mas/Rellenar polígono con símbolos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](AA.html), [DA](DA.html), [REPITE](REPITE.html) |

