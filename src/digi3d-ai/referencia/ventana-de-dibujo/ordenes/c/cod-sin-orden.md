# COD\_SIN\_ORDEN

Sustituye la lista de códigos activos, igual que la orden [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md).

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Códigos que pasan a ser los códigos activos. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si. Si no se especifica ningún parámetro, la orden muestra el cuadro de diálogo de búsqueda de códigos |

## Observaciones

La orden está pensada para no ejecutar las órdenes que la tabla de códigos tiene asignadas a la selección del código. En la versión actual sí las ejecuta, igual que [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](cod-sin-orden.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Códigos activos ... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md)<br>[COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) |
| Nombre interno | {6533DB11-E184-45cb-B78F-2C98D3FA7C77} |

