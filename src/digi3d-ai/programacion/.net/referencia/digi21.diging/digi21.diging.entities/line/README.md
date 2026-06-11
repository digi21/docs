# Line

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\).

```csharp
public class Line : ReadOnlyLine, IDesplazable, IDirectionable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)→ Line

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/)

## Constructores

|  |  |
| :--- | :--- |
| [Line\(Code\)](constructores.md#line-code) | Inicializa una nueva instancia de [Line](./)con un código. |
| [Line\(IEnumerable&lt;Code&gt;\)](constructores.md#line-ienumerable-less-than-code-greater-than) | Inicializa une nueva instancia de [Line](./)con múltiples códigos. |

## Propiedades

|  |  |
| :--- | :--- |
| [Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md). |

## Métodos


|  |  |
| :--- | :--- |
| [ChangeDirection()](../idirectionable/metodos/changedirection.md) | Cambia la dirección del [Line](./).; (Heredado de [IDirectionable](../idirectionable/)) |
| [Close()](metodos/close.md) | Cierra el [Line](./). |
| [Offset(Point2D)](../../digi21.math/idesplazable/metodos/offset.md#offset-point-2-d) | Desplaza el [Line](./) en el plano X, Y.; (Heredado de [IDesplazable](../../digi21.math/idesplazable/)) |
| [Offset(Point3D)](../../digi21.math/idesplazable/metodos/offset.md#offset-point-3-d) | Desplaza el [Line](./) en el espacio.; (Heredado de [IDesplazable](../../digi21.math/idesplazable/)) |
| [Offset(double, double)](../../digi21.math/idesplazable/metodos/offset.md#offset-double-double) | Desplaza el [Line](./) en el plano X, Y.; (Heredado de [IDesplazable](../../digi21.math/idesplazable/)) |
| [Offset(double, double, double)](../../digi21.math/idesplazable/metodos/offset.md#offset-double-double-double) | Desplaza el [Line](./) en el espacio.; (Heredado de [IDesplazable](../../digi21.math/idesplazable/)) |


