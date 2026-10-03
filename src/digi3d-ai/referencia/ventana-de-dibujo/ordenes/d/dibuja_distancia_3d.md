# DIBUJA\_DISTANCIA\_3D

Inserta un texto con la distancia real \(3D\) entre dos puntos digitalizados por el usuario, teniendo en cuenta la diferencia de cota entre ambos.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicitará que se digitalice el primer punto. Tras capturarlo, se mostrará una línea elástica entre dicho punto y la posición del cursor. Al digitalizar el segundo punto se calcula la distancia entre ambos, se inserta un texto con su valor y la orden termina.

El texto se sitúa en el punto medio entre los dos puntos, girado en la dirección de la línea que los une, con la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

La distancia se calcula en el espacio \(coordenadas X, Y, Z\) con la calculadora geográfica del dibujo, igual que [MIDE\_SEGMENTO\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md): con un sistema de referencia geográfico, la distancia no se expresa en grados sino en la unidad de trabajo. La distancia incluye el efecto de la diferencia de cota entre los dos puntos. Para obtener únicamente la distancia planimétrica utilice [DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Distancia 3D entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MIDE\_SEGMENTO\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md) |
| Nombre interno | {E2823D2D-8DE8-45C7-AC4A-FD1D81C8E712} |
