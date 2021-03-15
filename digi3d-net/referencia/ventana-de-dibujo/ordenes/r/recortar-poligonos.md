# RECORTAR\_POLIGONOS

Recorta todos los polígonos que interseccionen con un límite.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Eliminar la línea de límite | Cualquier valor, como por ejemplo un 1 | Si |

## Observaciones

Esta orden solicita que se seleccione una línea de límite. Esta línea debe ser una línea cerrada.

Analiza las intersecciones de la línea seleccionada con los polígonos visibles \(que pueden ser entidades de tipo _polígono_ o entidades de tipo _línea_ si éstas están cerradas\) y elimina de los polígonos la parte que interseccione con el límite seleccionado. Es posible que recorte un polígono en varias partes si el límite de recorte divide completamente un polígono..

## Características de la orden

| Tipo de orden | Interactiva |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Recortar polígonos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

