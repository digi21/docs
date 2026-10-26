# INS
<!-- id: ins -->

Inserta un archivo de dibujo en el archivo de trabajo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo que quieres insertar. Si no lo especificas, el programa muestra un cuadro de diálogo para seleccionar el archivo | Sí |

## Observaciones

* Si el archivo que quieres insertar se ha creado con la orden _BLOQUE_, el programa define un vector de traslación con origen en \(0, 0, 0\) y destino en las coordenadas del punto que indiques. Esta traslación sitúa todos los puntos del bloque en sus nuevas posiciones dentro del archivo de trabajo.
* Si quieres insertar cualquier archivo de dibujo de DigiNG, especifica como punto de inserción el punto de coordenadas \(0, 0, 0\) del archivo de trabajo. En este caso, los dos archivos deben estar en el mismo sistema de coordenadas para que la inserción sea posible.

Los archivos de dibujo \(BIN\) incluyen cualquier archivo DigiNG y los que crees con la orden [BLOQUE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md).

Los archivos BIN y BIND se insertan sin mostrar el cuadro de diálogo de parámetros de importación: un archivo BIN se lee con precisión de centímetros y origen global \(0, 0, 0\), y un archivo BIND se lee sin base de datos y sin sus archivos de referencia.

El archivo se inserta con un factor de escala igual al valor de la escala activa \([ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md)\).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Insertar un bloque orientado a norte... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [BLOQUE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md)<br>[BLOQUE\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque-2p.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Nombre interno | {053ADE6F-2BEF-4594-9E5B-C5C4448818DC} |

