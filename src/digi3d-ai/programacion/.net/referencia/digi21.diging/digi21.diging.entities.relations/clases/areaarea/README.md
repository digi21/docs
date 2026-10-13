# AreaArea
<!-- id: areaarea -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase estática proporciona métodos que permiten analizar la relación entre áreas.

```csharp
public static class AreaArea
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → AreaArea

## Observaciones

Un _Área_ en este contexto se refiere a líneas cerradas, de manera que engloba tanto a cualquier geometría de tipo [ReadOnlyPolygon](../../../digi21.diging.entities/clases/readonlypolygon/)o cualquier [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/)que esté cerrado.

Las relaciones entre dos áreas son excluyentes: para cada par de áreas `a` y `b`, en ese orden, se cumple exactamente una de estas nueve:

| Relación | Método que devuelve _Verdadero_ |
| :--- | :--- |
| Iguales | [Equal](metodos-estaticos/equal.md) |
| Disjuntas | [Disjoint](metodos-estaticos/disjoint.md) |
| Tienen un punto de unión | [Join](metodos-estaticos/join.md) |
| Adyacentes | [Adjacent](metodos-estaticos/adjacent.md) |
| `a` completamente dentro de `b` | [CompletelyWithin](metodos-estaticos/completelywithin.md)`(a, b)` |
| `a` dentro de `b` | [Within](metodos-estaticos/within.md)`(a, b)` |
| `b` completamente dentro de `a` | [CompletelyWithin](metodos-estaticos/completelywithin.md)`(b, a)` |
| `b` dentro de `a` | [Within](metodos-estaticos/within.md)`(b, a)` |
| Se solapan | [Overlap](metodos-estaticos/overlap.md) |

Estos métodos solo analizan vértices; no calculan intersecciones entre lados. Para cada vértice de un área se comprueba si coincide con un vértice de la otra área (vértice común) o si está dentro o fuera de la otra área. Un vértice que está dentro de un hueco de la otra área cuenta como fuera. Un vértice que está sobre un lado de la otra área sin coincidir con ningún vértice suyo se ignora. Las comparaciones se hacen en planta, sin tener en cuenta la coordenada Z, con la tolerancia de la precisión del archivo, y el resultado no depende del vértice inicial ni del sentido de recorrido de los anillos.

| Relación | Condición |
| :--- | :--- |
| Iguales | Los dos anillos exteriores tienen los mismos vértices, y los huecos también, con cualquier vértice inicial y sentido. Los vértices repetidos consecutivos no cuentan. |
| Disjuntas | Ningún vértice de un área está dentro de la otra y no hay vértices comunes. |
| `a` completamente dentro de `b` | Los vértices de `a` están dentro de `b`, ninguno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. |
| `a` dentro de `b` | Ningún vértice de `a` está fuera de `b`, al menos uno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. Si ningún vértice de `a` está dentro de `b`, se comprueba si el punto interior de `a` está dentro de `b`. |
| Adyacentes | Ningún vértice de un área está dentro de la otra, hay vértices comunes y al menos un lado común (dos vértices comunes consecutivos en los dos anillos). |
| Tienen un punto de unión | Ningún vértice de un área está dentro de la otra, hay vértices comunes y ningún lado común. |
| Se solapan | Cualquier otro caso: hay vértices de un área dentro de la otra y ninguna de las dos contiene a la otra. |

Consecuencias de analizar solo vértices:

* Si dos áreas se cruzan sin vértices comunes en el cruce ni vértices dentro de la otra área, el cruce pasa desapercibido: las áreas se consideran disjuntas.
* Si dos áreas comparten un tramo de lado sin vértices comunes, tampoco se detecta el contacto.

Si un área tiene un anillo sin cerrar, de área nula o con una espiga (un vértice cuyos dos vecinos coinciden), estos métodos lanzan una excepción que indica el motivo y las coordenadas.

## Métodos estáticos

|  |  |
| :--- | :--- |
| [Adjacent\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlyline) | Indica si dos areas de tipo [ReadOnlyLine](../../../digi21.diging.entities/clases/readonlyline/)son adyacentes. |
| [Adjacent\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/adjacent.md#adjacent-readonlyline-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/adjacent.md#adjacent-readonlypolygon-readonlyline) | Indica si dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son adyacentes. |
| [Adjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/adjacent.md#adjacent-readonlypolygon-readonlypolygon) | Indica si dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son adyacentes. |
| [CompletelyWithin\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/completelywithin.md#completelywithin-readonlyline-readonlyline) | Indica si el primera área de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [CompletelyWithin\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/completelywithin.md#completelywithin-readonlyline-readonlypolygon) | Indica si el primera área de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [CompletelyWithin\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/completelywithin.md#completelywithin-readonlypolygon-readonlyline) | Indica si la primera área de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| [CompletelyWithin\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/completelywithin.md#completelywithin-readonlypolygon-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| [Disjoint\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/disjoint.md#disjoint-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas. |
| [Disjoint\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/disjoint.md#disjoint-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son disjuntas. |
| [Equal\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/equal.md#equal-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son iguales. |
| [Equal\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/equal.md#equal-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) son iguales. |
| [Equal\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/equal.md#equal-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son iguales. |
| [Equal\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/equal.md#equal-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son iguales. |
| [Join\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/join.md#join-readonlyline-readonlyline) | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) tienen un punto de unión. |
| [Join\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/join.md#join-readonlyline-readonlypolygon) | Indica dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) tienen un punto en común. |
| [Join\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/join.md#join-readonlypolygon-readonlyline) | Indica dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) tienen un punto en común. |
| [Join\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/join.md#join-readonlypolygon-readonlypolygon) | Indica las dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) tienen un punto en común. |
| [OuterRingAdjacent\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlyline-readonlypolygon) | Indica si el área [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlypolygon-readonlyline) | Indica si el área [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [OuterRingAdjacent\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/outerringadjacent.md#outerringadjacent-readonlypolygon-readonlypolygon) | Indica si el límite exterior de los dos  [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) son adyacentes. |
| [Overlap\(ReadOnlyLine, ReadOnlyLine, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlyline-readonlyline-out-point-3-d) | Indica si las dos áreas de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) solapan y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyLine, ReadOnlyPolygon, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlyline-readonlypolygon-out-point-3-d) | Indica si el área de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyPolygon, ReadOnlyLine, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlypolygon-readonlyline-out-point-3-d) | Indica si el área de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Overlap\(ReadOnlyPolygon, ReadOnlyPolygon, out Point3D\)](metodos-estaticos/overlap.md#overlap-readonlypolygon-readonlypolygon-out-point-3-d) | Indica si las dos áreas de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) solapan y devuelve además las coordenadas de un punto por el que se cruzan. |
| [Within\(ReadOnlyLine, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlyline-readonlyline) | Indica si la primera área de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [Within\(ReadOnlyLine, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlyline-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |
| [Within\(ReadOnlyPolygon, ReadOnlyLine\)](metodos-estaticos/within.md#within-readonlypolygon-readonlyline) | Indica si la primera área de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| [Within\(ReadOnlyPolygon, ReadOnlyPolygon\)](metodos-estaticos/within.md#within-readonlypolygon-readonlypolygon) | Indica si la primera área de tipo [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |



