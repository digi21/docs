# LineLine

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase estática proporciona métodos que permiten analizar la relación entre dos líneas.

```csharp
public static class LineLine
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → LineLine

## Observaciones

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Across](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/across.md) devolverá _Falso_.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Across\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/across.md) | Indica si las dos [ReadOnlyLine](../../digi21.diging.entities/readonlyline/)se cruzan. |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/disjoint.md) | Indica si las dos [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [EndpointJoinEndpoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/endpointjoinendpoint.md) | Indica si las dos [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) están unidas por uno de sus extremos. |
| [EndpointJoinExcludingEndpoints\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/endpointjoinexcludingendpoints.md) | Indica uno de los extremos de la primera [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [Equal\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/equal.md) | Indica si las dos [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son iguales. |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/join.md) | Indica si las dos [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) se unen. |
| [Overlap\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/overlap.md) | Indica si las dos [ReadOnlyLine](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) solapan. |

