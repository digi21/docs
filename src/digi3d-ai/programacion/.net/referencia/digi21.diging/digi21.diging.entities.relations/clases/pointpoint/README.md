# PointPoint
<!-- id: pointpoint -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre dos puntos.

```csharp
public static class PointPoint
```

Los dos parámetros, `a` y `b`, son de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). Los métodos comparan las coordenadas X e Y de los dos puntos; la Z no interviene. `Disjoint(a, b)` devuelve siempre el valor contrario de `Coincident(a, b)`.

Los métodos comparan primero las cajas envolventes de los dos puntos, y esa comparación no usa tolerancia. Por eso dos puntos solo son coincidentes si sus X y sus Y son idénticas: dos puntos que difieren menos que [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) son disjuntos.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/coincident.md) | `true` si los dos puntos tienen las mismas coordenadas X e Y. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/disjoint.md) | `true` si los dos puntos tienen coordenadas X o Y distintas. |

Los dos métodos lanzan `ArgumentNullException` si `a` o `b` es `null`.

## Ejemplo

Este programa crea tres puntos en memoria y analiza sus relaciones:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.Math;

static Point Punto(string código, double x, double y, double z) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, z) };

var a = Punto("A", 1, 1, 0);
var b = Punto("B", 1, 1, 25); // Misma X e Y que A; la Z no se compara.
var c = Punto("C", 2, 2, 0);

Console.WriteLine($"Coincident(A, B): {PointPoint.Coincident(a, b)}"); // True
Console.WriteLine($"Disjoint(A, C): {PointPoint.Disjoint(a, c)}");     // True
```
