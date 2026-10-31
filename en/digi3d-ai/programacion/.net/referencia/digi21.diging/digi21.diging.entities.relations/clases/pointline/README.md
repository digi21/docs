# PointLine
<!-- id: pointline -->
<!-- origen: 4ddd7e1054c97333c7727a88701205ee0e0ff1dd -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between a point and a line.

```csharp
public static class PointLine
```

The first parameter, `point`, is a [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), and the second, `line`, is a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

Methods compare the point's coordinate with the line's vertices; they do not analyze edges. A point on a line edge that coincides with no vertex is disjoint from the line.

`Disjoint` returns the opposite of `Coincident || CoincidentAndTerminate`. `Coincident` and `CoincidentAndTerminate` only both return `true` if the line passes through the point twice: once at an intermediate vertex and once at an endpoint.

## Static methods

| Method | Description |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincident.md) | `true` if the point coincides with an intermediate line vertex. |
| [CoincidentAndTerminate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) | `true` if the point coincides with the first or last line vertex. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/disjoint.md) | `true` if the point coincides with no line vertex. |

All methods throw `ArgumentNullException` if `point` or `line` is `null`.

## Example

This program creates a line and three points in memory, and analyzes each point's relation to the line:

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
