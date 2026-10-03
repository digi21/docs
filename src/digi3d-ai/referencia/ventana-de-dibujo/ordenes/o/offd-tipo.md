# OFFD\_TIPO

Desactiva códigos en la pantalla fotogramétrica y en la de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) (uno o más), separados por espacios: `OFFD_TIPO=020101 L 030201 PT` | Si |

## Observaciones

En esta orden, `B` indica los complejos puntuales, no las imágenes, y `P` no incluye los complejos puntuales.

El tipo indica qué geometrías del código siguen visibles: la orden oculta las geometrías del código cuyo tipo no figura en el parámetro. Por eso, `*` oculta las imágenes, los multipuntos y el resto de tipos sin letra. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos y una casilla por tipo de geometría. La orden mantiene visibles los tipos marcados y oculta los demás.

## Características de la orden

| Tipo de orden | [Orden inmediata](offd-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Desactivar visualización de códigos (por código y tipo)... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {6B9FDE40-FD28-42E1-BE24-712BA50840CF} |
