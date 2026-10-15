# OuterRingAdjacent
<!-- id: outerringadjacent -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si dos áreas son adyacentes.

![Área adyacente área](../../../../../../../../../images/areaadyacentearea.png)

```csharp
public static bool OuterRingAdjacent(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool OuterRingAdjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Primera área: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Segunda área. |

## Valor devuelto

El mismo valor que [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md) con los mismos argumentos.

> En la versión 26.0.0, `OuterRingAdjacent` llama al mismo código que `Adjacent`: también tiene en cuenta los huecos de los polígonos. Un área adyacente a un hueco de un polígono devuelve `true`, aunque el nombre del método indique que solo se analiza el anillo exterior.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |
| `SEHException` | Un área tiene un anillo sin cerrar, de área nula o con una espiga. Lee las [excepciones de AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#excepciones). |
