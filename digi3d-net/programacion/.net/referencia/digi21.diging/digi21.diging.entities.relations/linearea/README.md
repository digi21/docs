# LineArea

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase estática proporciona métodos que permiten analizar la relación entre líneas y áreas.

```csharp
public static class LineArea
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → AreaArea

## Observaciones

Un _Área_ en este contexto se refiere a líneas cerradas, de manera que engloba tanto a cualquier geometría de tipo [ReadOnlyPolygon ](../../digi21.diging.entities/readonlypolygon/)o cualquier [ReadOnlyLine ](../../digi21.diging.entities/readonlyline/)que esté cerrado.

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Across ](metodos-estaticos/across.md)devuelve _Verdadero_, forzosamente [Disjoint ](../areaarea/metodos-estaticos/disjoint.md)devolverá _Falso_.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Across\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/across.md#across-readonlyline-readonlyline) | Indica si la línea cruza el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Across\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/across.md#across-readonlyline-readonlypolygon) | Indica si la línea cruza el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Adjacent\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlyline) | Indica si la línea es adyacente al área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlypolygon) | Indica si la línea es adyacente al área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlyline) | Indica si la línea es disjunta al área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Disjoint\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlypolygon) | Indica si la línea es adyacente al área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [EndpointJoin\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/endpointjoin.md#endpointjoin-readonlyline-readonlyline) | Indica si uno de los extremos de la línea finaliza en el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [EndpointJoin\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/endpointjoin.md#endpointjoin-readonlyline-readonlypolygon) | Indica si uno de los extremos de la línea finaliza en el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/join.md#join-readonlyline-readonlyline) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Join\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/join.md#join-readonlyline-readonlypolygon) | Indica si la línea se une en alguno de sus puntos en el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [TerminatesWithin\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/terminateswithin.md#terminateswithin-readonlyline-readonlyline) | Indica si uno de los extremos de la línea finaliza dentro del área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [TerminatesWithin\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/terminateswithin.md) | Indica si uno de los extremos de la línea finaliza dentro del área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Within\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlyline-readonlyline) | Indica si la línea está completamente dentro del área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Within\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlyline-readonlypolygon) | Indica si la línea está completamente dentro del área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |

