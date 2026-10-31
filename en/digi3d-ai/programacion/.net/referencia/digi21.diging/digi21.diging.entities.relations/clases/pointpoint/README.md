# PointPoint
<!-- id: pointpoint -->
<!-- origen: 753cfd882ea88884695877103c2741b1ed4deb1e -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between two points.

```csharp
public static class PointPoint
```

Both parameters, `a` and `b`, are of type [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). Methods compare the two points' X and Y coordinates; Z is ignored. `Disjoint(a, b)` always returns the opposite of `Coincident(a, b)`.

Methods first compare the two points' bounding boxes, and that comparison uses no tolerance. Therefore, two points are only coincident if their X and Y coordinates are identical: two points differing by less than [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) are disjoint.

## Static methods

| Method | Description |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/coincident.md) | `true` if the two points have the same X and Y coordinates. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/disjoint.md) | `true` if the two points have different X or Y coordinates. |

Both methods throw `ArgumentNullException` if `a` or `b` is `null`.

## Example

This program creates three points in memory and analyzes their relations:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.Math;

static Point Punto(string código, double x, double y, double z) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, z) };

var a = Punto("A", 1, 1, 0);
var b = Punto("B", 1, 1, 25); // Same X and Y as A; Z is not compared.
var c = Punto("C", 2, 2, 0);

Console.WriteLine($"Coincident(A, B): {PointPoint.Coincident(a, b)}"); // True
Console.WriteLine($"Disjoint(A, C): {PointPoint.Disjoint(a, c)}");     // True
```
