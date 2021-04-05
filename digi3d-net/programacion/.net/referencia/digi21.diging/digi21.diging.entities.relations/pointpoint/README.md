# PointPoint

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase estática proporciona métodos que permiten analizar la relación entre puntos.

```csharp
public static class PointPoint
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → PointPoint

## Observaciones

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Coindicent](../pointline/metodos-estaticos/coincident.md) devuelve _Verdadero_, forzosamente [CoincidentAndTerminate](../pointline/metodos-estaticos/coincidentandterminate.md) devolverá _Falso_.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Coincident\(ReadOnlyPoint, ReadOnlyPoint\)](metodos-estaticos/coincident.md) | Indica si los dos [ReadOnlyPoint ](../../digi21.diging.entities/readonlypoint/)son coincidentes. |
| [Disjoint\(ReadOnlyPoint, ReadOnlyPoint\)](metodos-estaticos/disjoint.md) | Indica si los dos [ReadOnlyPoint ](../../digi21.diging.entities/readonlypoint/)son disjuntos. |

