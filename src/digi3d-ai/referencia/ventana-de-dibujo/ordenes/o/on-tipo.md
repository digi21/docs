# ON\_TIPO

Activa códigos en la pantalla ortogonal.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) (uno o más), separados por espacios: `ON_TIPO=020101 L 030201 PT` | Si |

## Observaciones

En esta orden, `B` indica los complejos puntuales, no las imágenes, y `P` no incluye los complejos puntuales. `*` no incluye las imágenes, los multipuntos ni el resto de tipos sin letra.

La orden muestra las geometrías del código de los tipos indicados. Las geometrías de los demás tipos conservan su estado. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos y una casilla por tipo de geometría.

## Características de la orden

| Tipo de orden | [Orden inmediata](on-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {25205775-060E-4D99-9E3F-7FACE0FDD0BA} |
