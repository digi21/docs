# INSR

Permite insertar un bloque, almacenado en un fichero de dibujo, en una determinada posición del fichero de trabajo actual.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo a insertar. Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivo | Sí |

## Observaciones

La orden pide dos puntos: el punto de inserción y un punto de orientación. El bloque queda girado en la dirección de la recta que va del punto de inserción al punto de orientación.

El fichero, sea del tipo que sea, se insertará con un factor de escala igual al valor de la escala activa \( [ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](insr.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Insertar un bloque con dos puntos... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md) |
| Nombre interno | {71B23AF4-5836-4c88-BAFE-56351F1DBB92} |

