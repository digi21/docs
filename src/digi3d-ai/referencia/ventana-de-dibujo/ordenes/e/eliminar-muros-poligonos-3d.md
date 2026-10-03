# ELIMINAR\_MUROS\_POLIGONOS\_3D

Analiza polígonos creados mediante topologías 3D y elimina muros que superen un determinado alto.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de los polígonos a procesar | No |
| 2 | Diferencia mínima de Z de un muro, en unidades del sistema de referencia | No |

## Observaciones

La orden procesa los polígonos no borrados que tienen el código indicado. Un muro es un par de vértices consecutivos con la misma X,Y y una diferencia de Z mayor o igual que el parámetro 2.

Cuando el contorno sube por un muro y después baja por otro, la orden resta a los vértices situados entre ambos muros la altura acumulada de la subida. A continuación, en los vértices consecutivos con la misma X,Y, la orden asigna a los dos la Z menor y elimina el vértice repetido.

La orden sustituye cada polígono modificado por el resultado. Si faltan parámetros, la orden muestra un aviso y termina.

## Características de la orden

| Tipo de orden | [Orden inmediata](eliminar-muros-poligonos-3d.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {CB5AB130-A170-4A95-863C-D2E2C02A001B} |
