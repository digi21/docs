# Adjacent
<!-- id: adjacent -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si dos áreas son adyacentes: comparten al menos un lado y ningún vértice de una está dentro de la otra.

![Área adyacente área](../../../../../../../../../images/areaadyacentearea.png)

```csharp
public static bool Adjacent(ReadOnlyLine a, ReadOnlyLine b)
public static bool Adjacent(ReadOnlyLine a, ReadOnlyPolygon b)
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyLine b)
public static bool Adjacent(ReadOnlyPolygon a, ReadOnlyPolygon b)
```

| Parámetro | Descripción |
| :--- | :--- |
| `a` | Primera área: una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada o un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |
| `b` | Segunda área. |

## Valor devuelto

`true` si se cumplen las tres condiciones:

* Ningún vértice de `a` está dentro de `b` y ningún vértice de `b` está dentro de `a`.
* Las dos áreas tienen vértices comunes.
* Dos vértices consecutivos de un anillo de `a` son también vértices consecutivos de un anillo de `b` (un lado común). Los anillos de los huecos también cuentan.

Si las dos áreas son iguales, o una está dentro de la otra, el método devuelve `false`. La clasificación completa está en [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/). Si las áreas tienen vértices comunes pero ningún lado común, devuelve `true` el método [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |
| `SEHException` | Un área tiene un anillo sin cerrar, de área nula o con una espiga. Lee las [excepciones de AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#excepciones). |

## Ejemplo

Lee el [ejemplo de AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/#ejemplo).
