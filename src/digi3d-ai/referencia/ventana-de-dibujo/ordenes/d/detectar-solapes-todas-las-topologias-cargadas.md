# DETECTAR\_SOLAPES\_TODAS\_LAS\_TOPOLOGIAS\_CARGADAS
<!-- id: detectar-solapes-todas-las-topologias-cargadas -->

Detecta los recintos de cada topología cargada que se solapan con recintos de otra topología cargada y añade un error por cada pareja al [panel de tareas](/digi3d-ai/referencia/paneles/tareas.md).

## Parámetros

No admite parámetros.

## Observaciones

La orden necesita al menos dos topologías cargadas. Si no hay ninguna, muestra el aviso «No hay ninguna topología cargada»; si hay solo una, muestra «Se necesitan al menos dos topologías cargadas». En los dos casos emite el sonido de error y termina. Con menos de dos topologías, la opción del menú está desactivada.

### Funcionamiento

La orden compara cada pareja de topologías cargadas una sola vez. Los recintos de una misma topología no se comparan entre sí. Qué recintos se tienen en cuenta y cuándo dos recintos se solapan se explica en [DETECTAR\_SOLAPES\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md).

Por cada pareja de recintos que se solapan, la orden añade un error al panel de tareas con el texto «Polígono de topología: A intersecciona con polígono de topología: B». La coordenada de la tarea es un punto del borde de la zona común, y el archivo de la tarea es el archivo de dibujo activo.

Al terminar, la orden muestra el aviso «Solapes detectados: N» y, si hay alguno, emite el sonido de error.

La orden no modifica el dibujo.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Topología/Detectar solapes entre topologías/Entre todas las topologías cargadas |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DETECTAR\_SOLAPES\_TOPOLOGIAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar-solapes-topologias.md) |
| Nombre interno | {63B4E673-7503-42C2-A2A8-C3A4338C1587} |
