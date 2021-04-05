# PointArea

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase estática proporciona métodos que permiten analizar la relación entre puntos y áreas.

```csharp
public static class PointArea
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → PointArea

## Observaciones

Un _Área_ en este contexto se refiere a líneas cerradas, de manera que engloba tanto a cualquier geometría de tipo [ReadOnlyPolygon ](../../digi21.diging.entities/readonlypolygon/)o cualquier [ReadOnlyLine ](../../digi21.diging.entities/readonlyline/)que esté cerrado.

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Coincident](metodos-estaticos/coincident.md) devuelve _Verdadero_, forzosamente [Within](metodos-estaticos/within.md) devolverá _Falso_.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Coincident\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/coincident.md#coincident-readonlypoint-readonlyline) | Indica si el [ReadOnlyPoint ](../../digi21.diging.entities/readonlypoint/)es coincidente con el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Coincident\(ReadOnlyPoint, ReadOnlyPolygon\)](metodos-estaticos/coincident.md#coincident-readonlypoint-readonlypolygon) | Indica si el [ReadOnlyPoint ](../../digi21.diging.entities/readonlypoint/)es coincidente con el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Disjoint\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlypoint-readonlyline) | Indica si el [ReadOnlyPoint](../../digi21.diging.entities/readonlypoint/) y el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son disjuntos. |
| [Disjoint\(ReadOnlyPoint, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlypoint-readonlypolygon) | Indica si el [ReadOnlyPoint](../../digi21.diging.entities/readonlypoint/) y el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son disjuntos. |
| [Within\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlypoint-readonlyline) | Indica si el [ReadOnlyPoint](../../digi21.diging.entities/readonlypoint/) está en el interior del área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Within\(ReadOnlyPoint, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlypoint-readonlypolygon) | Indica si el [ReadOnlyPoint](../../digi21.diging.entities/readonlypoint/) está en el interior del área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |

