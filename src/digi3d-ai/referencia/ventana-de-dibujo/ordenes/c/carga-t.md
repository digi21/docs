# CARGA\_T

Lee la información de un fichero ASCII que contiene coordenadas y textos, incorporando al archivo de trabajo el texto en las coordenadas indicadas.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Nombre del fichero ASCII | Ruta de archivo | Si |

Sin parámetros, la orden muestra un cuadro de diálogo para elegir el fichero.

## Observaciones

Cada línea del fichero contiene cinco valores separados por espacios, tabuladores o comas:

| Posición | Descripción | Valores |
| :--- | :--- | :--- |
| 1 | Número de punto. La orden no lo usa | Texto |
| 2 | Coordenada X | Número real |
| 3 | Coordenada Y | Número real |
| 4 | Coordenada Z | Número real |
| 5 | Texto. Si el texto contiene espacios en blanco debe escribirse entre comillas \(" "\) | Texto |

La orden ignora las líneas con menos de cinco valores.

Por cada línea, la orden crea un texto desplazado respecto a las coordenadas leídas el valor de [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) en X y el valor de la distancia activa secundaria (DA2) en Y. El texto toma la altura [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), el ángulo [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) y la justificación [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) activos.

## Características de la orden

| Tipo de orden | [Orden interactiva](carga-t.md) sin parámetros; [orden inmediata](carga-t.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto |
| Nombre interno | {5A175F65-0009-476e-90D9-C155593035C4} |

