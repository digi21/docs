# DIBUJA\_ALTURA

Inserta un texto con la diferencia de altura \(el incremento de la coordenada Z\) entre dos puntos digitalizados por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código texto \([COD+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-mas.md)\) | Identificador del código | Si |
| 2 | Ángulo activo \([AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md)\) | Número real | Si |
| 3 | Altura de texto \([AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md)\) | Número real | Si |
| 4 | Justificación de texto \([JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md)\) | Número real | Si |
| 5 | Número de decimales \([NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md)\) | Número real | Si |

## Observaciones

La orden solicitará que se digitalice el primer punto. Tras capturarlo, se mostrará una línea elástica entre dicho punto y la posición del cursor. Al digitalizar el segundo punto se calcula la diferencia entre sus coordenadas Z y se inserta un texto con su valor en la posición indicada.

El valor representa el desnivel \(Z del segundo punto menos Z del primero\), por lo que puede ser negativo si el segundo punto está más bajo que el primero. Para rotular la distancia entre los dos puntos en lugar del desnivel, utilice [DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md) o [DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Diferencia de altura entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {1FF8D81D-06B6-4B5F-9E66-5B379753A58D} |
