# Coincident
<!-- id: coincident -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si el punto coincide con un vértice del área.

![Punto y área coincidentes](../../../../../../../../../images/puntoareacoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint point, ReadOnlyLine area)
public static bool Coincident(ReadOnlyPoint point, ReadOnlyPolygon area)
```

| Parámetro | Descripción |
| :--- | :--- |
| `point` | Punto, de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `area` | Área: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). En el ensamblado instalado, este parámetro se llama `line` o `polygon`. |

## Valor devuelto

`true` si la coordenada del punto coincide con un vértice del área. Con un `ReadOnlyPolygon`, el vértice puede ser del anillo exterior o de un hueco. El método devuelve `false` si el punto está sobre un lado del área sin coincidir con un vértice.

Con un `Point` creado en memoria, el método devuelve siempre `false`; lee la nota de [PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `point` o `area` es `null`. |

## Ejemplo

Lee el [ejemplo de PointArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/#ejemplo).
