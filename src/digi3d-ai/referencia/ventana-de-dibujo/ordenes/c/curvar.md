# CURVAR

Realiza el curvado de una triangulación.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | No se usa | — | No |
| 2 | Equidistancia de las curvas finas, en unidades del sistema de referencia | Número real | No |
| 3 | Equidistancia de las curvas maestras, en unidades del sistema de referencia | Número real | No |
| 4 | No se usa | — | No |
| 5 | Factor de suavizado | Número entero | No |
| 6 | Código con el que se generarán las curvas de nivel finas | Código | No |
| 7 | Código con el que se generarán las curvas de nivel maestras | Código | No |

Si se indican menos de siete parámetros, la orden los ignora y muestra un cuadro de diálogo con las equidistancias, los códigos, el factor de suavizado y la opción de respetar las curvas existentes con sus códigos.

## Observaciones

1. Selecciona la línea que actúa como límite de la zona a curvar.

La orden genera una triangulación con la cartografía existente dentro del límite, calcula las curvas de nivel con suavizado por spline cúbico y las añade al archivo de dibujo. Con parámetros, la orden respeta las curvas existentes que tienen los códigos de finas y maestras indicados.

## Características de la orden

| Tipo de orden | [Orden interactiva](curvar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | MDT/Curvar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos |
| Órdenes relacionadas | [TRIANGULAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md) |
| Nombre interno | {5F9CD935-26E7-4c30-97EC-456DADB28A08} |

