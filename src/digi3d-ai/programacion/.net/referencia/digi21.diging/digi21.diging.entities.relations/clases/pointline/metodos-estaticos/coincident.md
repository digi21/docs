# Coincident
<!-- id: coincident-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si el punto coincide con un vértice intermedio de la línea.

![Punto coincidente con línea](../../../../../../../../../images/puntolineacoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint point, ReadOnlyLine line)
```

| Parámetro | Descripción |
| :--- | :--- |
| `point` | Punto, de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `line` | Línea, de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). |

## Valor devuelto

`true` si la coordenada del punto coincide con un vértice de la línea que no es ni el primero ni el último. Si el punto coincide con un extremo, el método devuelve `false` y [CoincidentAndTerminate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) devuelve `true`. Con una línea de dos vértices, el método devuelve siempre `false`.

Con un `Point` creado en memoria, el método devuelve siempre `false`; lee la nota de [PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `point` o `line` es `null`. |

## Ejemplo

Lee el [ejemplo de PointLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/#ejemplo).
