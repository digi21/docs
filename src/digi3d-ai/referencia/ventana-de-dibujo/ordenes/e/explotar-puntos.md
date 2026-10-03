# EXPLOTAR\_PUNTOS

Convierte el símbolo de cada punto del archivo de dibujo activo en líneas independientes con los códigos del punto, y borra el punto.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de los puntos a explotar. Un parámetro que empieza por `#` es una etiqueta y equivale a todos los códigos que tienen esa etiqueta | Sí |

## Observaciones

La orden recorre los puntos del archivo de dibujo activo que no están borrados y son visibles. Si se indican parámetros, solo trata los puntos que tienen alguno de esos códigos; si los parámetros no corresponden a ningún código, no explota ningún punto. Sin parámetros, trata todos los puntos.

Para cada punto dibuja el símbolo del estilo asociado a su primer código igual que la ventana de dibujo: con la escala de la variable [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md), el tamaño del símbolo del estilo, la escala del punto y la rotación del punto. Cada trazo del símbolo se añade como una línea nueva con los códigos del punto, y el punto se borra. Las líneas y los polígonos del símbolo se convierten en líneas; los puntos y los textos del símbolo no generan líneas.

La orden no modifica estas entidades:

* Los puntos cuyo código tiene el tamaño expresado en píxeles: el tamaño del símbolo depende del zoom y no tiene un tamaño en el terreno. La barra de estado indica cuántos puntos no se han explotado por este motivo.
* Los puntos cuyo símbolo es una textura (una imagen) o no está en las fuentes de la tabla de códigos.
* Las entidades complejas puntuales y las entidades multipunto. Para explotar los puntos de una entidad compleja, explote antes la entidad compleja con [EXPLOTAR\_COMPLEJOS\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-complejos-cod.md).

Al terminar, la barra de estado indica el número de puntos explotados y el número de líneas creadas. Una sola ejecución de la orden [UNDO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/u/undo.md) deshace la operación completa.

Para convertir en líneas la simbología de las líneas, utilice la orden [BINPLT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/binplt.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](explotar-puntos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) |
| Nombre interno | {4B9DB358-FEB7-462A-9F39-34779422167D} |
