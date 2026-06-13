# SIMB

Rellena el interior de una entidad superficial de contorno cerrado usando una trama de símbolos.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo | Número real | Si |
| 2 | Distancia activa | Número real | Si |

## Observaciones

Si no se especifica ningún parámetro, el sistema toma por defecto los valores cero y uno para [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) y [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/DA.md) respectivamente.

La disposición de los símbolos depende de los valores que tengan asignados los parámetros [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) y [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/DA.md).

La posición de los símbolos coincidiría con las intersecciones de las rayas que se hubiesen obtenido al llamar a la orden [TRAMAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tramar.md), de forma que puedes distinguir dos conjuntos de símbolos.

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
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo  
[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos  
[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa  
[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto  
[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {8C69C4FD-E23F-4c34-A90E-EEC98079CD61} |

