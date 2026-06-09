# DIBUJA\_DISTANCIA\_3D

Inserta un texto con la distancia real \(3D\) entre dos puntos digitalizados por el usuario, teniendo en cuenta la diferencia de cota entre ambos.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código texto \([COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md)\) | Identificador del código | Si |
| 2 | Ángulo activo \([AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md)\) | Número real | Si |
| 3 | Altura de texto \([AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md)\) | Número real | Si |
| 4 | Justificación de texto \([JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md)\) | Número real | Si |
| 5 | Número de decimales \([NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md)\) | Número real | Si |

## Observaciones

La orden solicitará que se digitalice el primer punto. Tras capturarlo, se mostrará una línea elástica entre dicho punto y la posición del cursor. Al digitalizar el segundo punto se calcula la distancia entre ambos y se inserta un texto con su valor en la posición indicada.

La distancia se calcula en el espacio \(coordenadas X, Y, Z\), por lo que incluye el efecto de la diferencia de cota entre los dos puntos. Para obtener únicamente la distancia planimétrica utilice [DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Distancia 3D entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {E2823D2D-8DE8-45C7-AC4A-FD1D81C8E712} |
