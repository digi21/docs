# ORDENA\_POR\_DIGI\_TAB
<!-- id: ordena-por-digitab -->

Reordena las entidades de un archivo según el orden en la tabla de códigos activa.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | `-1` para ordenar en orden inverso al de la tabla de códigos. Cualquier otro valor se ignora | Si |

## Observaciones

La orden trabaja sobre el archivo de dibujo activo y ordena por el primer código de cada entidad.

En caso de querer invertir el orden de las entidades, la secuencia será `ORDENA_POR_DIGI_TAB=-1`

## Características de la orden

| Tipo de orden | [Orden inmediata](ordena-por-digitab.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Avanzado/Ordenar las entidades del archivo de dibujo según el orden en la tabla |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ORDENA\_POR\_CÓDIGO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo.md)<br>[ORDENA\_POR\_CÓDIGO\_N](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ordena-por-codigo-n.md) |
| Nombre interno | {FD785D31-49D9-4f52-94B6-720E78E5FBB9} |

