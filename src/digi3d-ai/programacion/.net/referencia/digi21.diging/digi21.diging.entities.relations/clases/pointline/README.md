# PointLine
<!-- id: pointline -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre un punto y una línea.

```csharp
public static class PointLine
```

El primer parámetro, `point`, es un [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), y el segundo, `line`, una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

Los métodos comparan la coordenada del punto con los vértices de la línea; no analizan los lados. Un punto sobre un lado de la línea que no coincide con ningún vértice es disjunto de la línea.

`Disjoint` devuelve el valor contrario de `Coincident || CoincidentAndTerminate`. `Coincident` y `CoincidentAndTerminate` solo devuelven `true` a la vez si la línea pasa dos veces por el punto: una por un vértice intermedio y otra por un extremo.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincident.md) | `true` si el punto coincide con un vértice intermedio de la línea. |
| [CoincidentAndTerminate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) | `true` si el punto coincide con el primer o el último vértice de la línea. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/disjoint.md) | `true` si el punto no coincide con ningún vértice de la línea. |

Todos los métodos lanzan `ArgumentNullException` si `point` o `line` es `null`.

## Ejemplo

Este programa crea en memoria una línea y tres puntos y analiza la relación de cada punto con la línea:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.Math;

static Point Punto(string código, double x, double y) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, 0) };

var línea = new Line(new Code("LINEA"));
línea.Points.Add(new[] { new Point3D(0, 0, 0), new Point3D(5, 0, 0), new Point3D(10, 0, 0) });

var intermedio = Punto("INTERMEDIO", 5, 0);
var extremo = Punto("EXTREMO", 10, 0);
var fuera = Punto("FUERA", 5, 1);

Console.WriteLine($"Coincident(INTERMEDIO): {PointLine.Coincident(intermedio, línea)}");                         // True
Console.WriteLine($"CoincidentAndTerminate(INTERMEDIO): {PointLine.CoincidentAndTerminate(intermedio, línea)}"); // False
Console.WriteLine($"CoincidentAndTerminate(EXTREMO): {PointLine.CoincidentAndTerminate(extremo, línea)}");       // True
Console.WriteLine($"Disjoint(FUERA): {PointLine.Disjoint(fuera, línea)}");                                       // True
```
