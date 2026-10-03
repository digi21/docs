# SELECCIONA\_EXPRESION\_PYTHON

Envía a la orden activa todas las geometrías que cumplan con la [expresión Python](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md) pasada por parámetros o introducida en el cuadro de diálogo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Expresión Python a ejecutar | Expresión Python. Todo el texto que sigue al nombre de la orden forma la expresión, incluidos los espacios | Si; si no se pasa este parámetro el programa mostrará un cuadro de diálogo para introducir la expresión Python. |

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple. Si no es así, la orden emite un sonido de error y termina.

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona_expresion_python.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Selecciona por expresión Python.../Introduciendo expresión... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ON\_EXPRESIÓN\_PYTHON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on_expresion_python.md)<br>[SELECCIONA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md)<br>[SELECCIONA\_POR\_ATRIBUTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-por-atributo.md) |
| Nombre interno | {60FBEA4A-2F76-40BB-9201-12C85A211682} |

