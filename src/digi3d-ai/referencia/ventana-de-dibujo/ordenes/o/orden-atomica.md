# ORDEN\_ATOMICA

Ejecuta las órdenes pasadas por parámetros como órdenes atómicas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Órdenes a ejecutar, separadas por espacios | No |

## Observaciones

La orden ejecuta las órdenes en el orden en que aparecen. Escribe entre comillas dobles cada orden que lleve parámetros: `ORDEN_ATOMICA="OFF=02*" "ON=0201*"`.

Si alguna de las órdenes es interactiva, ORDEN\_ATOMICA permanece activa hasta que terminan todas las órdenes interactivas que ha lanzado.

## Características de la orden

| Tipo de orden | [Orden inmediata](orden-atomica.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {5B3B09A9-7769-4755-9EAF-D094D8183252} |
