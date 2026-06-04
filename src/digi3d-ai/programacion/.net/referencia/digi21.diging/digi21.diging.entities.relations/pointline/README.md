# PointLine

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase estática proporciona métodos que permiten analizar la relación entre puntos y líneas.

```csharp
public static class PointLine
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → PointLine

## Observaciones

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Coindicent](metodos-estaticos/coincident.md) devuelve _Verdadero_, forzosamente [CoincidentAndTerminate](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) devolverá _Falso_.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Coincident\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/coincident.md) | Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| [CoincidentAndTerminate\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/coincidentandterminate.md) | Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| [Disjoint\(ReadOnlyPoint, ReadOnlyLine\)](metodos-estaticos/disjoint.md) | Indica si el [ReadOnlyPoint](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) son disjuntos. |

