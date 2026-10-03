# OND\_TIPO

Activa códigos en la pantalla fotogramétrica y la de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Pares de código y [tipo de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) (uno o más), separados por espacios: `OND_TIPO=020101 L 030201 PT` | Si |

## Observaciones

En esta orden, `P` incluye los puntos, los complejos puntuales, los puntos orientados y los multipuntos, `B` indica las imágenes y `*` incluye todos los tipos de geometría.

La orden muestra las geometrías del código de los tipos indicados. Las geometrías de los demás tipos conservan su estado. Un código que comienza por `#` representa todos los códigos de la tabla de códigos que tienen asignada esa etiqueta.

Sin parámetros, la orden muestra un cuadro de diálogo con la lista de códigos y una casilla por tipo de geometría \(líneas, puntos, textos, polígonos y complejos\). La orden muestra los tipos marcados. Con todas las casillas marcadas, la orden afecta a todos los tipos de geometría, también a los que no tienen casilla, como las imágenes.

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
