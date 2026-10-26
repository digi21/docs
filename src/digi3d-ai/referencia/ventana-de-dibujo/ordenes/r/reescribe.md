# REESCRIBE
<!-- id: reescribe -->

Reescribe las geometrías seleccionadas.

## Parámetros

No admite parámetros.

## Observaciones

Selecciona una o varias geometrías (la orden admite selección múltiple). La orden vuelve a almacenar las geometrías seleccionadas en el archivo de dibujo.&#x20;

Si el archivo de dibujo está enlazado a una base de datos, la orden vuelve a generar en la base de datos los atributos de las geometrías que almacena.

Si has modificado el esquema de base de datos en la tabla de códigos, por ejemplo al añadir un campo para la rotación de los puntos y textos, la orden rellena automáticamente esos campos al volver a almacenar las geometrías.

Si el control de calidad descarta la geometría reescrita, la geometría original se conserva sin cambios. Con varias geometrías, cada una se trata de forma independiente: solo se conserva el original de cada geometría descartada y las demás se reescriben.

## Características de la orden

| Tipo de orden                                    | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md)                                            |
| ------------------------------------------------ | ---------------------------------------------------------------------------- |
| Repite automáticamente                           | Sí                                                                           |
| Opción del menú donde aparece la orden           | Editar/Reescribe geometrías seleccionadas                                    |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión                                        | DigiNG.OrdenesStandard.dll                                                   |
| Implementación | Nativa |
| Variables relacionadas                           | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada                                              |
| Órdenes relacionadas                             | No tiene órdenes relacionadas |
| Nombre interno | {3E3A20C6-2E60-4428-9E9D-68C95EF39099} |
