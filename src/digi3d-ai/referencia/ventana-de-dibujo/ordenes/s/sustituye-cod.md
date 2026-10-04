# SUSTITUYE\_COD
<!-- id: sustituye-cod -->

Sustituye los códigos de la entidad seleccionada por los activos.

## Parámetros

No admite parámetros.

## Observaciones

Selecciona la entidad con el pulsador de datos o con el pulsador de tentativo. La orden borra la entidad y crea una copia con los códigos activos. Si la entidad no pertenece al archivo de dibujo activo, la orden emite un sonido de error.

La orden admite selección múltiple: con una orden de selección (por ejemplo [SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md)) se sustituyen los códigos de todas las entidades seleccionadas que sean visibles, no estén borradas, estén dentro de la zona de interés y pertenezcan al archivo de dibujo activo.

## Características de la orden

| Tipo de orden | [Orden interactiva](sustituye-cod.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Sustituir códigos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ANADIR\_CODIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anadir-codigos.md)<br>[CAMB\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[EDITAR\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-cod.md) |
| Nombre interno | {21B55860-EFAB-4017-85DB-74972DEB774E} |

