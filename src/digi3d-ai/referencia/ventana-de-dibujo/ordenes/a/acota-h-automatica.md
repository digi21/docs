# ACOTA\_H\_AUTOMATICA

Si el sensor activo lo admite, proyecta una línea hacia abajo y hacia arriba y acota la intersección de esta línea con el modelo.

## Parámetros

No admite parámetros.

## Observaciones

La orden necesita una ventana fotogramétrica abierta con un sensor que admita esta orden (el sensor de nubes de puntos). Si no la hay, o si el sensor activo no la admite, la orden muestra un mensaje de error y termina.

Mientras mueves el cursor, la orden busca el punto del modelo más cercano por debajo y el más cercano por encima de la posición del cursor y muestra la acotación provisional. Al introducir un punto, la orden añade al archivo de dibujo:

* Una línea entre el punto inferior y el punto superior.
* Un texto en el punto medio de esa línea con la diferencia de Z entre los dos puntos, con el número de decimales de la ventana de dibujo, la [altura de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) y la [justificación de textos](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) activas.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [DIBUJA\_ALTURA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md) |
| Nombre interno | {8F359476-FD67-4C4D-8509-24E0C230F661} |
