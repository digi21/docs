# UNIR\_XYZ\_TABLA
<!-- id: unir-xyz-tabla -->

Une las líneas cuyos códigos se pasen por parámetros si en el nodo de unión coincide la coordenada Z y sólo llegan dos geometrías al nodo

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | No |

## Observaciones

La orden trabaja sobre las líneas visibles del archivo de dibujo activo y solo une líneas con códigos compatibles. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden emite un sonido de error y no hace nada.

Cada línea se une como mucho una vez en cada ejecución. Para unir una cadena de más de dos líneas, ejecuta la orden varias veces.

## Características de la orden

| Tipo de orden | [Orden inmediata](unir-xyz-tabla.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [UNIR\_LINEAS\_TABLA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-lineas-tabla.md)<br>[UNIR\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/unir-xyz.md) |
| Nombre interno | {40963DC8-B7E2-4EE8-B7E9-4CF9D3FCFC65} |
