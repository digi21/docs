# LineLine

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Esta clase estática proporciona métodos que permiten analizar la relación entre dos líneas.

```csharp
public static class LineLine
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → LineLine

## Observaciones

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Across](metodos-estaticos/across.md) devuelve Verdadero, forzosamente [EndpointJoinEndpoint](metodos-estaticos/endpointjoinendpoint.md) devolverá _Falso_.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Across\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/across.md) | Indica si las dos [ReadOnlyLine ](../../../digi21.diging.entities/clases/readonlyline/)se cruzan. |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/disjoint.md) | Indica si las dos [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [EndpointJoinEndpoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/endpointjoinendpoint.md) | Indica si las dos [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) están unidas por uno de sus extremos. |
| [EndpointJoinExcludingEndpoints\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/endpointjoinexcludingendpoints.md) | Indica uno de los extremos de la primera [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) está unido a la segunda [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) excluyendo los extremos de la segunda\). |
| [Equal\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/equal.md) | Indica si las dos [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) son iguales. |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/join.md) | Indica si las dos [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) se unen. |
| [Overlap\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/overlap.md) | Indica si las dos [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/) solapan. |

