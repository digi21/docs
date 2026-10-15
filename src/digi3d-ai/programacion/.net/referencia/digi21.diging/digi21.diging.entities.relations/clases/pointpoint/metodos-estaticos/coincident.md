# Coincident
<!-- id: coincident-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si los dos puntos son coincidentes.

![Dos puntos coincidentes](../../../../../../../../../images/puntopuntocoincidentes.png)

```csharp
public static bool Coincident(ReadOnlyPoint a, ReadOnlyPoint b)
```

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Primer punto, de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `b` | Segundo punto. |

## Valor devuelto

`true` si las coordenadas X e Y de los dos puntos son idénticas. La coordenada Z no se compara. Lee en [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/) por qué la tolerancia `Precision.Epsilon` no se aplica y por qué un `Point` creado en memoria nunca es coincidente.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |

## Ejemplo

Lee el [ejemplo de PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/#ejemplo).
