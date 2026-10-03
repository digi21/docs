# OFF\_TIPO

Desactiva códigos en la pantalla ortogonal.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y tipo de geometría (uno o más), separados por espacios: `OFF_TIPO=020101 L 030201 PT` | Si |

## Observaciones

El tipo de geometría es una combinación de las letras siguientes:

| Letra | Tipo de geometría |
| :--- | :--- |
| L | Líneas |
| P | Puntos |
| T | Textos |
| C | Complejos |
| H | Polígonos |
| \* | Todos los tipos |

El tipo indica qué geometrías del código siguen visibles: la orden oculta las geometrías del código cuyo tipo no figura en el parámetro. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos y una casilla por tipo de geometría. La orden mantiene visibles los tipos marcados y oculta los demás.

## Características de la orden

| Tipo de orden | [Orden inmediata](off-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {780E5540-E7F2-4733-9387-837A56DA7F81} |
