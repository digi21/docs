# Within
<!-- id: within-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si el punto está en el interior del área.

![Punto en el interior del área](../../../../../../../../../images/puntointeriorarea.png)

```csharp
public static bool Within(ReadOnlyPoint point, ReadOnlyLine area)
public static bool Within(ReadOnlyPoint point, ReadOnlyPolygon area)
```

| Parámetro | Descripción |
| :--- | :--- |
| `point` | Punto, de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `area` | Área: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). En el ensamblado instalado, este parámetro se llama `line` o `polygon`. |

## Valor devuelto

`true` si la coordenada del punto está en el interior del área. Devuelve `false` si el punto está sobre el borde (un vértice o un lado, del anillo exterior o de un hueco), dentro de un hueco o fuera del área. Con una `ReadOnlyLine` sin cerrar, devuelve siempre `false`.

Con un `Point` creado en memoria, el método devuelve siempre `false`; lee la nota de [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `point` o `area` es `null`. |

## Ejemplo

Lee el [ejemplo de PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/#ejemplo).
