# INS\_COMPLEJO
<!-- id: ins-complejo -->

Inserta el contenido de un archivo de dibujo como un único elemento complejo puntual.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo a insertar. Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivo | Sí |

## Observaciones

* La orden agrupa todas las entidades no borradas del archivo en un elemento complejo puntual y pide el punto de inserción.
* El elemento complejo se gira el valor de la variable [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), en grados sexagesimales. No se aplica la escala activa.

## Características de la orden

| Tipo de orden | [Orden interactiva](ins-complejo.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Nombre interno | {83C10011-EDBD-4FB2-B96D-6A3D4AC0D530} |

