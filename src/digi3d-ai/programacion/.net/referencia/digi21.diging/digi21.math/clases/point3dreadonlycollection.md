# Point3DReadOnlyCollection
<!-- id: point3dreadonlycollection -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Lista de solo lectura de los vértices de una entidad.

```csharp
public class Point3DReadOnlyCollection : IReadOnlyList<Point3D>
```

Implementa: `IReadOnlyList<Point3D>`.

La clase no tiene constructores públicos, y ningún miembro del ensamblado devuelve un `Point3DReadOnlyCollection`: la propiedad `Points` de [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) y de [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) se declara como `IReadOnlyList<Point3D>`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int Count { get; }` | Número de vértices. |
| `Point3D this[int index] { get; }` | Vértice de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor o igual que `Count`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `bool Contains(Point3D vertex)` | `true` si algún vértice es igual a `vertex` según el operador `==` de [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md), que usa la tolerancia [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md). |
| `int IndexOf(Point3D item)` | Posición del primer vértice igual a `item` con la misma regla que `Contains`, o `-1`. |
| `int IndexOf(Point2D item)` | Posición del primer vértice con la X y la Y iguales a las de `item` según `Precision.Epsilon`, o `-1`. La Z no se compara. |
| `void CopyTo(Point3D[] array, int arrayIndex)` | Copia los vértices en `array` a partir de `arrayIndex`. Lanza `ArgumentNullException` si `array` es `null`, `ArgumentOutOfRangeException` si `arrayIndex` es negativo e `IndexOutOfRangeException` si los vértices no caben en `array`. |
| `IEnumerator<Point3D> GetEnumerator()` | Enumerador de los vértices. |
