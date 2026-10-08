# OFFD\_TIPO
<!-- id: offd-tipo -->

Desactiva códigos en la pantalla fotogramétrica y en la de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) (uno o más), separados por espacios: `OFFD_TIPO=020101 L 030201 PT` | Si |

## Observaciones

En esta orden, `P` incluye los puntos, los complejos puntuales, los puntos orientados y los multipuntos, `B` indica las imágenes y `*` incluye todos los tipos de geometría.

La orden oculta las geometrías del código de los tipos indicados. Las geometrías de los demás tipos conservan su estado. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

La orden actúa sobre todos los archivos de dibujo cargados. Cambia a la vez la ventana de dibujo y las ventanas fotogramétricas.

Los parámetros se indican en pares «código tipo». Con un solo parámetro, la orden no hace nada.

Sin parámetros, la orden muestra el cuadro de diálogo [Selecciona códigos](/digi3d-ai/referencia/cuadros-de-dialogo/selecciona-codigos.md) con las casillas **Líneas**, **Puntos**, **Textos**, **Polígonos** y **Complejos**, y los botones **Todos** y **Ninguno**, que marcan y desmarcan las cinco casillas. Cada vez que se ejecuta la orden, el cuadro se abre con la lista de códigos vacía y las cinco casillas marcadas. La orden oculta los tipos marcados de los códigos de la lista. Con las cinco casillas marcadas, la orden afecta a todos los tipos de geometría, también a las imágenes. Sin ninguna casilla marcada, la orden no cambia nada.

## Características de la orden

| Tipo de orden | [Orden inmediata](offd-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Desactivar visualización de códigos (por código y tipo)... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFF\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md)<br>[OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md)<br>[OFFS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs-tipo.md)<br>[OND\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md) |
| Nombre interno | {6B9FDE40-FD28-42E1-BE24-712BA50840CF} |
