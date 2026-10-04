# TIPO\_DE\_Z
<!-- id: tipo-de-z -->

Indica al programa la manera de registrar las coordenadas de Z de los vértices de las entidades lineales.

## Parámetros

| Valor | Tipo | Función |
| :--- | :--- | :--- |
| 0 | Descendente | Registra vértices únicamente si el punto tiene una coordenada Z inferior a la del vértice anterior |
| 1 | Descendente moderado | Registra puntos únicamente si el punto tiene una coordenada Z inferior o igual a la del vértice anterior |
| 2 | Libre | Permite un registro libre sin forzar ningún tipo |
| 3 | Ascendente moderado | Registra vértices únicamente si el punto tiene una coordenada Z superior o igual a la del vértice anterior |
| 4 | Ascendente | Registra vértices únicamente si el punto tiene una coordenada Z superior a la del vértice anterior |

El cambio de un tipo de Z a otro lo puedes hacer tecleando `TIPO_DE_Z=2`

`TIPO_DE_Z=?` muestra el valor actual. Sin parámetros, la orden muestra un cuadro de diálogo para introducir el valor.

## Observaciones

Esta orden resulta práctica en las ocasiones en las cuales se necesita restituir un curso de agua en una zona muy llana y se necesita asegurar que el registro se hace de forma descendente.

## Características de la orden

| Tipo de orden | [Variable entera](tipo-de-z.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) |
| Nombre interno | {F3405A61-4894-487c-98C0-490005CFF029} |

