# DIBUJA\_DISTANCIA

Inserta un texto con la distancia planimétrica \(2D\) entre dos puntos digitalizados por el usuario.

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

La distancia se calcula en planimetría \(coordenadas X, Y\), sin tener en cuenta la diferencia de cota. Para obtener la distancia real \(considerando la coordenada Z\) utilice [DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md); para obtener únicamente la diferencia de altura utilice [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Distancia entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {13136F31-77CB-4603-8755-359C8BD03A1C} |
