# COD

Establece el código con el que se van a dibujar las entidades.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Códigos que pasan a ser los códigos activos. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si. Si no se especifica ningún parámetro, la orden muestra el cuadro de diálogo de búsqueda de códigos. Si se cierra sin seleccionar ningún código, los códigos activos no cambian |

## Observaciones

La orden sustituye la lista de códigos activos por los códigos indicados. Si el primer código está deshabilitado en la tabla de códigos, la orden muestra un aviso y no cambia los códigos activos. Al seleccionar cada código, la orden ejecuta las órdenes que la tabla de códigos tiene asignadas a la selección de ese código.

No se puede dibujar ningún elemento si no hay un código activo. Si se cambia de código mientras se está dibujando una entidad, el programa termina en ese momento la entidad que se estaba dibujando con el código anterior y empieza automáticamente una nueva cuya primer punto sea el último de la entidad terminada.

## Características de la orden

| Tipo de orden | [Orden inmediata](cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Más/Añadir códigos activos... |
| Barra de herramientas en la que aparece la orden | Código |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[COD\_SIN\_ORDEN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-sin-orden.md)<br>[COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md) |
| Nombre interno | {A5CFB875-B477-462c-837E-CB1D54C72D3F} |

