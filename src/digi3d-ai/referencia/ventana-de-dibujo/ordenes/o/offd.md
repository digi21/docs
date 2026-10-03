# OFFD

Desactiva el código \(o códigos\) que no se desean visualizar en la pantalla de dibujo, tanto en DigiNG como en la pantalla de visión estereoscópica.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código/os que se ocultarán en la pantalla de dibujo | Si. Por defecto al abrir un fichero de dibujo aparecen todos los códigos visibles |

### Ejemplos

`OFFD=*`

Oculta todos códigos en pantalla

`OFFD=02*`

Oculta todos los códigos que comiencen por 02

`OFFD=020123`

Oculta solamente los elementos cuyo código sea 020123

## Observaciones

Separa los códigos con espacios. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos a desactivar. Añade códigos con el botón _Añadir_, o selecciona una etiqueta en el desplegable para añadir los códigos que la tienen asignada.

Para desactivar solo algunos tipos de geometría de un código, ejecuta [OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](offd.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)<br>[OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md) |
| Nombre interno | {8F8C9C74-5355-4e4e-BF18-0BD69083C295} |

