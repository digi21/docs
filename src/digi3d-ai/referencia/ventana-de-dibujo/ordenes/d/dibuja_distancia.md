# DIBUJA\_DISTANCIA
<!-- id: dibuja-distancia -->

Inserta un texto con la distancia planimétrica \(2D\) entre dos puntos digitalizados por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicitará que se digitalice el primer punto. Tras capturarlo, se mostrará una línea elástica entre dicho punto y la posición del cursor. Al digitalizar el segundo punto se calcula la distancia entre ambos, se inserta un texto con su valor y la orden termina.

El texto se sitúa en el punto medio entre los dos puntos, girado en la dirección de la línea que los une, con la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

La distancia se calcula en planimetría \(coordenadas X, Y\), sin tener en cuenta la diferencia de cota, con la calculadora geográfica del dibujo, igual que [MIDE\_SEGMENTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md): con un sistema de referencia geográfico, la distancia no se expresa en grados sino en la unidad de trabajo. Para obtener la distancia real \(considerando la coordenada Z\) utilice [DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md); para obtener únicamente la diferencia de altura utilice [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Distancia entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[MIDE\_SEGMENTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md)<br>[PONE\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-distancia.md) |
| Nombre interno | {13136F31-77CB-4603-8755-359C8BD03A1C} |
