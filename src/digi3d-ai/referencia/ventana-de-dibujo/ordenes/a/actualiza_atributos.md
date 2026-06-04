# ACTUALIZA\_ATRIBUTOS

Actualiza los atributos de la geometría seleccionada con los activos en el panel Atributos Activos.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden no sustituye los atributos de la geometría como hace la orden [CAMB\_ATRIBUTOS](/digi3d-net/referencia/ventana-de-dibujo/ordenes/c/camb_atributos.md). En caso de que la geometría tenga algún campo de los que tiene el panel de Atributos Activos, modificará su valor por el que tenga el panel, y en caso de que la geometría no tenga un atributo que esté en el panel, se añadirá a la geometría, pero no se eliminarán los campos que tenga la geometría y que no estén en el panel.

Al ejecutar esta orden solicita que seleccionemos la geometría o geometrías a actualizar sus atributos.&#x20;

Esta orden admite [selección múltiple](/digi3d-net/referencia/editor-de-tablas-de-codigos/pestanas/selecciones.md), de manera que podemos modificar múltiples geometrías simultáneamente.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](../c/camb-cod.md)                                                                                                                           |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Repite automáticamente                           | Si                                                                                                                                                              |
| Opción del menú donde aparece la orden           | Editar/Actualizar los atributos de una entidad por los activos                                                                                                  |
| Barra de herramientas en la que aparece la orden | _Esta orden no aparece en ninguna barra de herramientas_                                                                                                        |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                                                                                                      |
| Variables relacionadas                           | [REPITE](/digi3d-net/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno                                   | {0A40A990-893E-4975-B7F1-915DF25FAE2A}                                                                                                                          |
