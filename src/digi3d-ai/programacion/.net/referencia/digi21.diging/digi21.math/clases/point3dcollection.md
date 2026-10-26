# Point3DCollection
<!-- id: point3dcollection -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

La propiedad `Points` de [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) y de [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) devuelve una lista modificable de los vértices de la entidad.

```csharp
public class Point3DCollection : IList<Point3D>, IReadOnlyList<Point3D>
```

Implementa: `IList<Point3D>` e `IReadOnlyList<Point3D>`.

La clase no tiene constructores públicos. La colección no copia los vértices: lee y modifica directamente los vértices de la entidad. Cada cambio actualiza las coordenadas mínimas y máximas de la entidad (`Xmin`, `Xmax`, `Ymin`, …).

Si la entidad pertenece a un archivo de dibujo (su propiedad `Owner` no es `null`), los métodos que modifican la colección lanzan `InvalidOperationException`. `IsReadOnly` devuelve `false` también en ese caso.

`Contains`, `IndexOf` y `Remove` comparan los vértices con la tolerancia [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md), como el operador `==` de [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int Count { get; }` | Número de vértices. |
| `bool IsReadOnly { get; }` | Siempre `false`. |
| `Point3D this[int index] { get; set; }` | Vértice de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor o igual que `Count`. El `set` lanza `InvalidOperationException` si la entidad pertenece a un archivo de dibujo. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Add(Point3D item)` | Añade el vértice al final. |
| `void Add(IEnumerable<Point3D> points)` | Llama a `Add(Point3D)` con cada punto, en el orden de la enumeración. Lanza `NullReferenceException` si `points` es `null`. El paquete NuGet `Digi21.DigiNG` no declara esta sobrecarga: solo se puede llamar compilando con el ensamblado instalado con Digi3D.AI. |
| `void Insert(int index, Point3D item)` | Inserta el vértice en la posición `index`. Con `index` igual a `Count`, añade el vértice al final. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor que `Count`. |
| `bool Remove(Point3D item)` | Elimina el primer vértice igual a `item`. Devuelve `false` si no hay ninguno. |
| `void RemoveAt(int index)` | Elimina el vértice de la posición `index`. Lanza `ArgumentOutOfRangeException` si `index` es negativo o mayor o igual que `Count`. |
| `void Clear()` | Elimina todos los vértices. |
| `bool Contains(Point3D vertex)` | `true` si algún vértice es igual a `vertex`. |
| `int IndexOf(Point3D item)` | Posición del primer vértice igual a `item`, o `-1`. |
| `void CopyTo(Point3D[] array, int arrayIndex)` | Copia los vértices en `array` a partir de `arrayIndex`. Lanza `ArgumentNullException` si `array` es `null`, `ArgumentOutOfRangeException` si `arrayIndex` es negativo e `IndexOutOfRangeException` si los vértices no caben en `array`. |
| `IEnumerator<Point3D> GetEnumerator()` | Enumerador de los vértices. `MoveNext` lanza `InvalidOperationException` si el número de vértices cambia durante el recorrido. |

`Add`, `Insert`, `Remove`, `RemoveAt`, `Clear` y el `set` del indexador lanzan `InvalidOperationException` si la entidad pertenece a un archivo de dibujo. Para modificar los vértices de una entidad leída de un archivo, modifica la copia que devuelve `Clone()`.

## Ejemplo

Este programa crea una línea y modifica sus vértices:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var línea = new Line(new Code("020101"));
Point3DCollection vértices = línea.Points;

vértices.Add(new Point3D(0.0, 0.0, 0.0));
vértices.Add(new Point3D(10.0, 0.0, 0.0));
vértices.Add(new Point3D(10.0, 10.0, 0.0));

// Inserta el vértice en la posición 1; con el índice Count lo añadiría al final.
vértices.Insert(1, new Point3D(5.0, -1.0, 0.0));

// Contains, IndexOf y Remove comparan con Precision.Epsilon.
Precision.Epsilon = 0.001;
Console.WriteLine(vértices.IndexOf(new Point3D(10.0, 0.0004, 0.0))); // 2

vértices[0] = new Point3D(0.0, 0.0, 5.0);
vértices.RemoveAt(vértices.Count - 1);

foreach (var vértice in vértices)
    Console.WriteLine(vértice);

// La ventana de la línea se actualiza con cada cambio de los vértices.
Console.WriteLine($"{línea.Xmin} {línea.Xmax} {línea.Zmax}"); // 0 10 5
```
