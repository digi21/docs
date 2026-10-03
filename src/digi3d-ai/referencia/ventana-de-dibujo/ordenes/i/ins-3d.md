# INS\_3D

Inserta un bloque en 3D a partir de tres puntos: el primero fija la posición, el segundo la orientación y el tercero la rotación.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ruta del archivo (bloque 3D). Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivo | Sí |

## Observaciones

* El primer punto es el punto de inserción: el origen \(0, 0, 0\) del bloque se coloca en él.
* El segundo punto orienta el bloque: el eje Z negativo del bloque se alinea con la dirección que va del primer punto al segundo.
* El tercer punto gira el bloque alrededor de ese eje.
* El bloque se inserta sin aplicar la escala activa.

## Características de la orden

| Tipo de orden | [Orden interactiva](ins-3d.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [INS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEJO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Nombre interno | {B8590A12-158B-4F7B-BD50-28DAED949ECF} |
