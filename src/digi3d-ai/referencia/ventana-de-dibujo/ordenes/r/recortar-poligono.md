# RECORTAR\_POLÍGONO

Recorta un polígono eliminando la parte de éste que intersecciona con un límite.

![Órdenes para recortar y cortar: TRIM, TRIM_LADO y TRIM_M eliminan partes de líneas que cruzan un límite, CRUCE crea un cruce de caminos, CORTAR_E, CORTAR_Y_BORRAR y CORTA_2P parten una línea, y CORTAR_POLIGONO, RECORTAR_POLIGONO y RECORTAR_POLIGONOS dividen o recortan polígonos](../../../../../images/recortar-cortar.svg)

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Eliminar la línea de límite | Cualquier valor, como por ejemplo un 1 | Si |

## Observaciones

Esta orden solicita que se seleccione un polígono a recotar. Únicamente permitirá seleccionar entidades de tipo _polígono_ o entidades de tipo _línea_ si ésta está cerrada.  
A continuación solicita que se seleccione una línea que actuará de límite. Esta línea debe ser una línea cerrada.

La orden analiza la intersección entre ambas entidades y crea un o unos \(pues es posible que la línea de límite parta el polígono en varias partes\) polígonos.

## Características de la orden

| Tipo de orden | [Orden interactiva](recortar-poligono.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Recortar polígono |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Código fuente | [DigiNG.Commands](https://github.com/digi21/DigiNG.Commands) |

