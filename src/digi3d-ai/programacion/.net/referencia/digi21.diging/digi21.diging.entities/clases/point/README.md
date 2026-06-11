# Point

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo punto.

```csharp
public class Point : ReadOnlyPoint, IDesplazable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → Point

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| [Point\(Code\)](constructores.md#point-code) | Inicializa una nueva instancia de [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) con un código. |
| [Point\(IEnumerable&lt;Code&gt;\)](constructores.md#point-ienumerable-less-than-code-greater-than) | Inicializa une nueva instancia de [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/coordinate.md). |
| [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md). |

## Métodos


|  |  |
| :--- | :--- |
| [Offset(Point2D)](../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-point-2-d) | Desplaza el [Point](./) en el plano X, Y.; (Heredado de [IDesplazable](../../../digi21.math/interfaces/idesplazable/)) |
| [Offset(Point3D)](../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-point-3-d) | Desplaza el [Point](./) en el espacio.; (Heredado de [IDesplazable](../../../digi21.math/interfaces/idesplazable/)) |
| [Offset(double, double)](../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-double-double) | Desplaza el [Point](./) en el plano X, Y.; (Heredado de [IDesplazable](../../../digi21.math/interfaces/idesplazable/)) |
| [Offset(double, double, double)](../../../digi21.math/interfaces/idesplazable/metodos/offset.md#offset-double-double-double) | Desplaza el [Point](./) en el espacio.; (Heredado de [IDesplazable](../../../digi21.math/interfaces/idesplazable/)) |


