# ROTULA\_CURVAS

Rotula una o varias curvas de una vez con su cota correspondiente.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 … N | Código o códigos de las líneas a rotular | Identificador del código | Si |

## Observaciones

Si no indicas parámetros, la orden muestra un cuadro de diálogo para seleccionar los códigos.

La orden solicita dos puntos que definen un segmento. Mientras mueves el cursor, la orden muestra los textos que se van a crear. Por cada línea con alguno de los códigos que corta el segmento, la orden crea un texto en el punto de corte con la Z de ese punto. El texto sigue la dirección del tramo de la línea cortado y se gira 180º si quedaría boca abajo.

El texto tiene la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md), y se almacena con el código activo. Después de crear los textos, la orden solicita un nuevo segmento.

Esta orden no rotulará entidades que están desactivadas con la orden [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](rotula-curvas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Rotular curvas de nivel... |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {B2B07A8C-8AF6-481b-BD30-324B6A4A7919} |

