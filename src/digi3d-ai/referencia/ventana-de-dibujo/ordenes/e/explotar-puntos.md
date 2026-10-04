# EXPLOTAR\_PUNTOS
<!-- id: explotar-puntos -->

Convierte el símbolo de cada punto del archivo de dibujo activo en líneas independientes con los códigos del punto, y borra el punto.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de los puntos a explotar. Un parámetro que empieza por `#` es una etiqueta y equivale a todos los códigos que tienen esa etiqueta | Sí |

## Observaciones

La orden recorre los puntos del archivo de dibujo activo que no están borrados y son visibles. Si se indican parámetros, solo trata los puntos que tienen alguno de esos códigos; si los parámetros no corresponden a ningún código, no explota ningún punto. Sin parámetros, trata todos los puntos.

Para cada punto dibuja el símbolo de cada representación de cada uno de sus códigos igual que la ventana de dibujo: con la escala de la variable [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md), el tamaño del símbolo del estilo, la escala del punto y la rotación del punto. Cada trazo de los símbolos se añade como una línea nueva con los códigos del punto, y el punto se borra.

La orden no modifica estas entidades:

* Los puntos con algún código que tiene el tamaño expresado en píxeles: el tamaño del símbolo depende del zoom y no tiene un tamaño en el terreno.
* Los puntos con algún símbolo que no se puede convertir entero en líneas: un símbolo que es una textura (una imagen), un símbolo que no está en las fuentes de la tabla de códigos o un símbolo que contiene puntos o textos.
* Los puntos cuyas líneas no admite el archivo de dibujo, por ejemplo, un archivo de solo lectura o un formato que guarda cada código en una capa de un solo tipo de geometría. Si el archivo almacena solo una parte de las líneas de un punto, la orden borra esas líneas y deja el punto.
* Las entidades complejas puntuales y las entidades multipunto. Para explotar los puntos de una entidad compleja, explote antes la entidad compleja con [EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md).

Al terminar, la barra de estado indica el número de puntos explotados, el número de líneas creadas y el número de puntos sin explotar por cada uno de los tres primeros motivos. Una sola ejecución de la orden [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) deshace la operación completa.

Para convertir en líneas la simbología de las líneas, utilice la orden [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](explotar-puntos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) |
| Órdenes relacionadas | [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md)<br>[EXPLOTAR\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejo.md)<br>[EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md)<br>[EXPLOTAR\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligono.md)<br>[EXPLOTAR\_POLIGONOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-poligonos-cod.md) |
| Nombre interno | {4B9DB358-FEB7-462A-9F39-34779422167D} |
