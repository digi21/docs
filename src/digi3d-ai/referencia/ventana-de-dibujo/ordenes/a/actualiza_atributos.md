# ACTUALIZA\_ATRIBUTOS
<!-- id: actualiza-atributos -->

Actualiza los atributos de la geometría seleccionada con los activos en el panel Atributos Activos.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden no sustituye los atributos de la geometría como hace la orden [CAMB\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md). Si la geometría ya tiene un atributo que aparece en el panel Atributos Activos, la orden asigna al atributo el valor del panel. Si la geometría no tiene un atributo del panel, la orden lo añade a la geometría. La orden conserva los atributos de la geometría que no aparecen en el panel.

Si el valor de un atributo activo es un valor especial (macro), la orden calcula ese valor para cada geometría y convierte el resultado al tipo del campo.

La orden solo sustituye las geometrías cuyos atributos cambian. En la selección múltiple ignora las geometrías borradas y las que no pertenecen al modelo actual.

Al ejecutar esta orden, el programa solicita que selecciones las geometrías cuyos atributos quieres actualizar.&#x20;

Esta orden admite [selección múltiple](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), de manera que puedes modificar los atributos de varias geometrías simultáneamente.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios. Si seleccionas varias entidades, la orden trata cada entidad de forma independiente: conserva el original de cada entidad descartada y modifica las entidades que superan el control de calidad.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md)                                                                                                          |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repite automáticamente                           | Sí                                                                                                                                                              |
| Opción del menú donde aparece la orden           | Editar/Actualizar los atributos de una entidad por los activos                                                                                                  |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_                                                                                                        |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Implementación | Nativa |
| Variables relacionadas                           | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas                             | [CAMB\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md)<br>[CLONAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md) |
| Nombre interno                                   | {0A40A990-893E-4975-B7F1-915DF25FAE2A}                                                                                                                          |
