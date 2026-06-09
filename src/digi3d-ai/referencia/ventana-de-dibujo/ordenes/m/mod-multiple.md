# MOD\_MÚLTIPLE

Modifica el trazado geométrico de varias entidades en XY.

## Parámetros

No admite parámetros.

## Observaciones.

Tienes que dibujar una entidad que represente el nuevo trazado de los elementos que quieres modificar, y sin dar por terminada ésta, ejecuta la orden MOD\_MÚLTIPLE. El nuevo tramo dibujado debería engancharse en los puntos apropiados de la entidad a modificar.

Digi3D.AI busca en la entidad a modificar, los puntos más próximos al primero y último de la entidad modificadora, y sustituye el tramo comprendido entre dichos puntos por los puntos de la entidad modificadora.

En este proceso, la cota de los puntos de la entidad modificadora se ajusta a la de la entidad modificada. Si no deseas modificar las cotas utiliza la orden [MOD\_Z\_MULTIPLE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z-multiple.md).

Independientemente del código utilizado al dibujar la entidad modificadora, éste se cambia por el de la entidad modificada.

## Características de la orden

| Tipo de orden | [Orden interactiva](mod-multiple.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Nombre interno | {8F810FF6-B3F4-4080-9572-84554E9F33AE} |

