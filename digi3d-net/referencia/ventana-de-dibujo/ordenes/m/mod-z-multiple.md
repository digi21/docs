# MOD\_Z\_MULTIPLE

Modifica el trazado geométrico de varias entidades en XYZ.

## Parámetros

No admite parámetros.

## Observaciones

Tienes que dibujar una entidad que represente el nuevo trazado del elemento que quieres modificar, y sin dar por terminada ésta, ejecuta la orden MOD\_Z\_MULTIPE. El nuevo tramo dibujado debería engancharse en los puntos apropiados de la entidad a modificar.

Digi3D.NET busca en la entidad a modificar, los puntos más próximos al primero y último de la entidad modificadora, y sustituye el tramo comprendido entre dichos puntos por los puntos de la entidad modificadora.

En este proceso, la cota de los puntos de la entidad modificadora se ajusta a la de la entidad modificada.

Independientemente del código utilizado al dibujar la entidad modificadora, éste se cambia por el de la entidad modificada.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

