# UNIR\_LINEAS

Une las líneas visibles que comparten alguno de los códigos indicados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 … N | Códigos de las líneas a unir, separados por espacios | — | Si |

## Observaciones

La orden une las líneas del archivo de dibujo activo en los nodos donde coinciden sus extremos, siempre que tengan códigos compatibles. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden espera a que selecciones las entidades y une las líneas seleccionadas.

En el menú aparece como un submenú generado dinámicamente, con una entrada por cada etiqueta de la tabla de códigos; al elegir una, se unen entre sí las líneas visibles cuyos códigos tienen esa etiqueta.

## Características de la orden

| Tipo de orden | [Orden inmediata](unir-lineas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [UNIR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-cod.md)<br>[UNIR\_LINEAS\_TABLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md)<br>[UNIR\_LINEAS\_VISIBLES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-visibles.md)<br>[UNIR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md) |
| Nombre interno | {F4EF84A6-0F2D-4D42-8D9D-3F08B2C4CEF5} |
