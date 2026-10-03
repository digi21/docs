# CREAR\_COMPLEJOS\_COD

Crear elementos complejos agrupando entidades con el mismo código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Códigos de las entidades a agrupar. Un parámetro que empieza por `#` se sustituye por todos los códigos que tienen esa etiqueta en la tabla de códigos. | Si. Si no se especifica ningún parámetro, la orden muestra el cuadro de diálogo de búsqueda de códigos |

## Observaciones

Para cada código, la orden crea un complejo con ese código que contiene una copia de las entidades no borradas del archivo de dibujo activo cuyo primer código coincide exactamente con él, y borra las entidades originales. Los comodines no se interpretan: `CREAR_COMPLEJOS_COD=*` solo agrupa las entidades cuyo código es literalmente `*`.

## Características de la orden

| Tipo de orden | [Orden inmediata](crear-complejos-cod.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CREAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crear-complejo.md)<br>[EXPLOTAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOTAR\_COMPLEJOS\_COD2](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod2.md) |
| Nombre interno | {D79CD929-8B17-41DE-8F12-2C7D0262AE9F} |

