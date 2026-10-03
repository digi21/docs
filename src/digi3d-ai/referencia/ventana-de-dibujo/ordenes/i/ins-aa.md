# INS\_AA

Inserta un fichero de dibujo en el archivo de trabajo girado el ángulo activo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo a insertar. Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivo | Sí |

## Observaciones

Funciona igual que la orden [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md), pero gira el bloque alrededor del punto de inserción el valor de la variable [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), en grados sexagesimales.

El fichero, sea del tipo que sea, se insertará con un factor de escala igual al valor de la escala activa \([ESC\_ACT](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](ins-aa.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Bloques/Insertar un bloque con ángulo activo... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {D342155B-D2EF-43c1-B74E-D88DF9922139} |

