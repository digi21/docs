# CAMB\_ATRIBUTOS
<!-- id: camb-atributos -->

Sustituye los atributos de la geometría seleccionada por los activos en el panel Atributos Activos.

## Parámetros

No admite parámetros.

## Observaciones

Al ejecutar esta orden solicita que seleccionemos la geometría o geometrías a cambiar sus atributos.&#x20;

Esta orden admite [selección múltiple](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), de manera que podemos modificar múltiples geometrías simultáneamente.

Si el valor de un atributo activo es un valor especial (macro), la orden lo evalúa para cada geometría y asigna el resultado convertido al tipo del campo.

Si el control de calidad descarta la entidad modificada, la entidad original se conserva sin cambios. Con varias entidades, cada una se trata de forma independiente: solo se conserva el original de cada entidad descartada y las demás se modifican.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](camb_atributos.md)                                                                                                                              |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repite automáticamente                           | Si                                                                                                                                                              |
| Opción del menú donde aparece la orden           | Editar/Cambiar los atributos de una entidad por los activos                                                                                                     |
| Barra de herramientas en la que aparece la orden | _Esta orden no aparece en ninguna barra de herramientas_                                                                                                        |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Variables relacionadas                           | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas                             | [ACTUALIZA\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/actualiza_atributos.md)<br>[CLONAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[EDITAR\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar_atributos.md) |
| Nombre interno                                   | {5F66A7F4-7575-4C61-962A-0E1A40E13FB4}                                                                                                                          |
