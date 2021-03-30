# MOD\_Z

Modifica el trazado geométrico de una entidad en XYZ.

## Parámetros

No admite parámetros.

## Observaciones

Tienes que dibujar una entidad que represente el nuevo trazado del elemento que quieres modificar, y sin dar por terminada ésta, ejecuta la orden MOD. El nuevo tramo dibujado debería engancharse en los puntos apropiados de la entidad a modificar.

Digi3D.NET busca en la entidad a modificar, los puntos más próximos al primero y último de la entidad modificadora, y sustituye el tramo comprendido entre dichos puntos por los puntos de la entidad modificadora.

En este proceso, la cota de los puntos de la entidad modificadora no se ajusta a la de la entidad modificada. Si no deseas modificar las cotas utiliza la orden [MOD](MOD.html).

Independientemente del código utilizado al dibujar la entidad modificadora, éste se cambia por el de la entidad modificada.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Modificar en XYZ una polilínea existente con la que se está registrando |
| Barra de herramientas en la que aparece la orden | Modifica |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

