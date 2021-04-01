# SIMB

Rellena el interior de una entidad superficial de contorno cerrado usando una trama de símbolos.

## Parámetros

Si no se especifica ningún parámetro, el sistema toma por defecto los valores cero y uno para [ángulo activo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/AA.html) y [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/DA.html) respectivamente.

## Observaciones

La disposición de los símbolos depende de los valores que tengan asignados los parámetros [ángulo activo](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/AA.html) y [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/DA.html).

La posición de los símbolos coincidiría con las intersecciones de las rayas que se hubiesen obtenido al llamar a la orden [TRAMAR](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/TRAMAR.html), de forma que puedes distinguir dos conjuntos de símbolos.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo | Número real | Si |
| 2 | Distancia activa | Número real | Si |

## Características de la orden

| Tipo de orden | [Orden interactiva](simb.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Mas/Rellenar polígono con símbolos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/AA.html), [DA](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/DA.html), [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/s/REPITE.html) |

