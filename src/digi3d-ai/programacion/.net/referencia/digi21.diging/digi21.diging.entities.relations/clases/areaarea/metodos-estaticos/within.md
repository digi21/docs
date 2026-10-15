# Within
<!-- id: within -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si la primera área está dentro de la segunda y comparte con ella al menos un vértice.

![Área dentro de área](../../../../../../../../../images/areaincluyearea2.png)

![Área dentro de área](../../../../../../../../../images/areaincluyearea3.png)

```csharp
public static bool Within(ReadOnlyLine a, ReadOnlyLine b)
public static bool Within(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Within(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Within(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Área que se comprueba si está dentro de `b`: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Área contenedora. |

## Valor devuelto

`true` si se cumplen las tres condiciones:

* Ningún vértice de `a` está fuera de `b`. Un vértice dentro de un hueco de `b` está fuera de `b`.
* Al menos un vértice de `a` coincide con un vértice de `b`.
* Ningún vértice de `b`, huecos incluidos, está dentro de `a`.

Si ningún vértice de `a` está dentro de `b` (todos son comunes o están sobre los lados de `b`), el método calcula un punto interior de `a` y devuelve `true` si ese punto está dentro de `b`.

Si `a` está dentro de `b` sin vértices comunes, este método devuelve `false` y [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(a, b)` devuelve `true`. Para cubrir los dos casos, combina `Within(a, b) || CompletelyWithin(a, b)`. El método no es simétrico: para saber si `b` está dentro de `a`, llama a `Within(b, a)`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |
| `SEHException` | Un área tiene un anillo sin cerrar, de área nula o con una espiga. Lee las [excepciones de AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#excepciones). |

## Ejemplo

Lee el [ejemplo de AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#ejemplo).
