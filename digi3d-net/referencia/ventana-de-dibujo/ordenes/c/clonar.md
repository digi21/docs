# CLONAR

Clona las propiedades \(códigos, ángulo activo, altura de texto,...\) de la entidad seleccionada.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden realiza las siguientes tareas en función del tipo de entidad seleccionada para clonar sus propiedades:

* Asigna como códigos activos los códigos de la entidad seleccionada.
* Si la entidad seleccionada es lineal, asigna como Z activa la coordenada Z en el punto de selección \(independientemente de si el modo de búsqueda activo al seleccionar la entidad es 2D o 3D\).
* Si la entidad seleccionada es un punto o un texto, se asigna como coordenada Z activa la coordenada el punto o del texto.
* Si la entidad seleccionada es un texto, se cambia el valor de la variable [AT](AT.html) por el de la altura de texto del texto seleccionado, se cambia el valor de la variable [JT](JT.html) por el de la justificación de texto del texto seleccionado y se cambia el valor de la variable [AA](AA.html) por el del ángulo activo del texto seleccionado.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Más/Clonar las propiedades de una entidad |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

