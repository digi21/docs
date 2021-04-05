# AreaArea

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](../)  
Ensamblado: [Digi21.DigiNG](../../)

Esta clase estática proporciona métodos que permiten analizar la relación entre áreas.

```csharp
public static class AreaArea
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → AreaArea

## Observaciones

Un _Area_ en este contexto se refiere a líneas cerradas, de manera que engloba tanto a cualquier geometría de tipo [ReadOnlyPolygon ](../../digi21.diging.entities/readonlypolygon/)o cualquier [ReadOnlyLine ](../../digi21.diging.entities/readonlyline/)que esté cerrado.

El resultado de uno de estos métodos estáticos es excluyente, lo que significa que, si [Adjacent](metodos-estaticos/adjacent.md)[ ](../linearea/metodos-estaticos/across.md)devuelve Verdadero, forzosamente [CompletelyWithin](metodos-estaticos/completelywithin.md) devolverá falso.

Estos métodos únicamente analizan vértices existentes, es decir, que si no hay un vértice común entre las dos geometrías que se cruzan, su cruce pasará desapercibido.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Adjacent\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlyline) | Indica si dos areas de tipo [ReadOnlyLine ](../../digi21.diging.entities/readonlyline/)son adyacentes. |
| [Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/adjacent.md#adjacent-readonlypolygon-readonlyline) | Indica si dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) y [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/adjacent.md#adjacent-readonlypolygon-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son adyacentes. |
| [CompletelyWithin\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/completelywithin.md#completelywithin-readonlyline-readonlyline) | Indica si el primera área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) está completamente incluida en el segunda área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [CompletelyWithin\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/completelywithin.md#completelywithin-readonlyline-readonlypolygon) | Indica si el primera área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) está completamente incluida en el segunda área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [CompletelyWithin\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/completelywithin.md#completelywithin-readonlypolygon-readonlyline) | Indica si la primera área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) está completamente incluida en la segunda área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [CompletelyWithin\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/completelywithin.md#completelywithin-readonlypolygon-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) está completamente incluida en la segunda área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) y [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son disjuntas. |
| [Equal\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/equal.md#equal-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son iguales. |
| [Equal\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/equal.md#equal-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son iguales. |
| [Equal\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/equal.md#equal-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) y [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) son iguales. |
| [Equal\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/equal.md#equal-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son iguales. |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/join.md#join-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) tienen un punto de unión. |
| [Join\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/join.md#join-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) y [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) tienen un punto en común. |
| [Join\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/join.md#join-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) y [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) tienen un punto en común. |
| [Join\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/join.md#join-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) tienen un punto en común. |
| [OuterRingAdjacent\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlyline-readonlypolygon) | Indica si el área [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlypolygon-readonlyline) | Indica si el área [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) es adyacente al área representada por el límite exterior del [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlypolygon-readonlypolygon) | Indica si el límite exterior de los dos  [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) son adyacentes. |
| [Overlap\(ReadOnlyLine, ReadOnlyLine, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlyline-readonlyline-out-point-3-d) | Indica si las dos áreas de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) solapan y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyLine, ReadOnlyPolygon, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlyline-readonlypolygon-out-point-3-d) | Indica si el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) solapa con el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyPolygon, ReadOnlyLine, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlypolygon-readonlyline-out-point-3-d) | Indica si el área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) solapa con el área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyPolygon, ReadOnlyPolygon, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlypolygon-readonlypolygon-out-point-3-d) | Indica si las dos áreas de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) solapan y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Within\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlyline-readonlyline) | Indica si la primera área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) está incluida en la segunda área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Within\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlyline-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/) está incluida en la segunda área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |
| [Within\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlypolygon-readonlyline) | Indica si la primera área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) está incluida en la segunda área de tipo [ReadOnlyLine](../../digi21.diging.entities/readonlyline/). |
| [Within\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlypolygon-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/) está incluida en la segunda área de tipo [ReadOnlyPolygon](../../digi21.diging.entities/readonlypolygon/). |



