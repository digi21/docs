# Disjoint
<!-- id: disjoint-6 -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si los dos puntos son disjuntos.

![Dos puntos disjuntos](../../../../../../../../../images/puntopuntonocoincidentes.png)

```csharp
public static bool Disjoint(ReadOnlyPoint a, ReadOnlyPoint b)
```

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Primer punto, de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). |
| `b` | Segundo punto. |

## Valor devuelto

`true` si la coordenada X o la coordenada Y de los dos puntos son distintas. Es el valor contrario de [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/coincident.md)`(a, b)`.

Si uno de los puntos es un `Point` creado en memoria, el método devuelve siempre `true`; lee la nota de [PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |

## Ejemplo

Lee el [ejemplo de PointPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/#ejemplo).
