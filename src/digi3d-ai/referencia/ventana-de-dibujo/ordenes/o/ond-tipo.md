# OND\_TIPO
<!-- id: ond-tipo -->

Activa códigos en la pantalla fotogramétrica y la de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) (uno o más), separados por espacios: `OND_TIPO=020101 L 030201 PT` | Si |

## Observaciones

En esta orden, `P` incluye los puntos, los complejos puntuales, los puntos orientados y los multipuntos, `B` indica las imágenes y `*` incluye todos los tipos de geometría.

La orden muestra las geometrías del código de los tipos indicados. Las geometrías de los demás tipos conservan su estado. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

La orden actúa sobre todos los archivos de dibujo cargados. Cambia a la vez la ventana de dibujo y las ventanas fotogramétricas.

Los parámetros se indican en pares «código tipo». Con un solo parámetro, la orden no hace nada.

Sin parámetros, la orden muestra el cuadro de diálogo [Selecciona códigos](/digi3d-ai/referencia/cuadros-de-dialogo/selecciona-codigos.md) con las casillas **Líneas**, **Puntos**, **Textos**, **Polígonos** y **Complejos**, y los botones **Todos** y **Ninguno**, que marcan y desmarcan las cinco casillas. Cada vez que se ejecuta la orden, el cuadro se abre con la lista de códigos vacía y las cinco casillas marcadas. La orden muestra los tipos marcados de los códigos de la lista. Con las cinco casillas marcadas, la orden afecta a todos los tipos de geometría, también a las imágenes. Sin ninguna casilla marcada, la orden no cambia nada.

## Características de la orden

| Tipo de orden | [Orden inmediata](ond-tipo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Ver/Activar visualización de códigos (por código y tipo)... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [OFFD\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md)<br>[ON\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md)<br>[ONS\_TIPO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md) |
| Nombre interno | {9D4AB57F-589B-4157-A772-B3EAED0C8253} |
