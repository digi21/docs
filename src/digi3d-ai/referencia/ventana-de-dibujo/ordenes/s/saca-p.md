# SACA\_P

Coloca un punto junto a cada texto del archivo de dibujo que tenga alguno de los códigos indicados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1...n | Códigos de los textos junto a los que se colocan los puntos | Nombre de código, o `#etiqueta` para todos los códigos con esa etiqueta | Si; si no se indica ningún código, la orden muestra un cuadro de diálogo para seleccionar los códigos |

## Observaciones

Esta orden es de gran utilidad cuando se han perdido puntos y necesitamos volver a colocarlos al lado de un texto.

La orden recorre los textos visibles, no borrados y dentro de la zona de interés. Por cada texto que tenga alguno de los códigos indicados crea un punto en el punto de inserción del texto, desplazado la distancia activa principal en X y la distancia activa secundaria en Y (ver [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md)). El desplazamiento no tiene en cuenta el ángulo del texto. La Z del punto es la del punto de inserción del texto.

El punto se crea con los códigos activos.

Puedes ejecutar la orden desde la línea de comandos con la siguiente secuencia:

`saca_p=<código>`

## Características de la orden

| Tipo de orden | [Orden inmediata](saca-p.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {8D88009E-77AB-451c-9AC4-D3CDAB98A14D} |

