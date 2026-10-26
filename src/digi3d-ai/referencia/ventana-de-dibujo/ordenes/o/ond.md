# OND
<!-- id: ond -->

Activa la visualización del código \(o códigos\) que indiques en la ventana de dibujo y en la ventana fotogramétrica.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos que se mostrarán en la ventana de dibujo | Sí. Por defecto, al abrir un archivo de dibujo aparecen todos los códigos visibles |

### Ejemplos

`OND=*`

Muestra todos los códigos en pantalla.

`OND=02*`

Muestra todos los códigos que comiencen por 02.

`OND=020123`

Muestra solamente los elementos cuyo código sea 020123.

## Observaciones

Separa los códigos con espacios. Un parámetro que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos a activar. Añade códigos con el botón _Añadir_, o selecciona una etiqueta en el desplegable para añadir los códigos que la tienen asignada.

Para activar solo algunos tipos de geometría de un código, ejecuta [OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Todos los códigos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md)<br>[ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md)<br>[OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md)<br>[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md) |
| Nombre interno | {7F1B6401-4A3F-46ca-B9F9-188B12809D1E} |

