# DIBUJA\_ALTURA
<!-- id: dibuja-altura -->

Inserta un texto con la diferencia de altura \(el incremento de la coordenada Z\) entre dos puntos digitalizados por el usuario.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicitará que se digitalice el primer punto. Tras capturarlo, se mostrará una línea elástica entre dicho punto y la posición del cursor. Al digitalizar el segundo punto se calcula la diferencia entre sus coordenadas Z, se inserta un texto con su valor y la orden termina.

El texto se sitúa en el punto medio entre los dos puntos, girado en la dirección de la línea que los une, con la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

El valor representa el desnivel \(Z del segundo punto menos Z del primero\), por lo que puede ser negativo si el segundo punto está más bajo que el primero. Para rotular la distancia entre los dos puntos en lugar del desnivel, utilice [DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md) o [DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Acotar/Diferencia de altura entre dos puntos |
| Barra de herramientas en la que aparece la orden | Acotaciones |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ACOTA\_H\_AUTOMATICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/acota-h-automatica.md)<br>[AREA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/area.md)<br>[DIBUJA\_DISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DIBUJA\_DISTANCIA\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DIBUJA\_PERÍMETRO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DIBUJA\_PERÍMETRO\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md)<br>[PONE\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pone-altura.md) |
| Nombre interno | {1FF8D81D-06B6-4B5F-9E66-5B379753A58D} |
