# CLONAR

Clona las propiedades \(códigos, ángulo activo, altura de texto,...\) de la entidad seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden realiza las siguientes tareas en función del tipo de entidad seleccionada para clonar sus propiedades:

* Asigna como códigos activos los códigos de la entidad seleccionada.
* Asigna como atributos activos los atributos de la entidad seleccionada.
* Si la entidad seleccionada es lineal, asigna como Z activa la Z interpolada en el punto de selección sobre el segmento seleccionado \(independientemente de si el modo de búsqueda activo al seleccionar la entidad es 2D o 3D\) y mueve el cursor a ese punto.
* Si la entidad seleccionada es un punto o un texto, asigna como Z activa la coordenada Z del punto o del texto.
* Si la entidad seleccionada es un texto, asigna a la variable [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) la altura del texto, a [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) su justificación \(0 si la justificación es mayor que 8\) y a [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) su ángulo de rotación.

## Características de la orden

| Tipo de orden | [Orden interactiva](clonar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Más/Clonar las propiedades de una entidad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — valor de la coordenada Z activa |
| Órdenes relacionadas | [CLONAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[CLONAR\_CAMPOS\_BBDD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md)<br>[CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md) |
| Nombre interno | {43D5468D-F728-4289-87B6-8D9D467EC132} |

