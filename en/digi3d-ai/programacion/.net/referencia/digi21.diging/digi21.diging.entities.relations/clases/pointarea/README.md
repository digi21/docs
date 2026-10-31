# PointArea
<!-- id: pointarea -->
<!-- origen: 5cac52180783c0d1e68e097c148926751e4c0bb4 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between a point and an area.

```csharp
public static class PointArea
```

The first parameter, `point`, is a [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). The second, `area`, is a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) or a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/); each method has an overload for each type. Methods do not check whether the `ReadOnlyLine` is closed; if it is not, no point is inside it.

> The reference NuGet package names the second parameter `area`. In the installed assembly it is named `polygon` in overloads with `ReadOnlyPolygon` and `line` in overloads with `ReadOnlyLine`; that is the name returned by `ArgumentNullException.ParamName`.

Exactly one of these three relations holds for each point and area:

| Relation | Method returning `true` |
| :--- | :--- |
| The point coincides with an area vertex (outer ring or hole). | [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/coincident.md) |
| The point is inside the area. | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/within.md) |
| Neither of the above: the point is outside, inside a hole or on an edge without coinciding with a vertex. | [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/disjoint.md) |

## Static methods

| Method | Description |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/coincident.md) | `true` if the point coincides with an area vertex. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/disjoint.md) | `true` if the point coincides with no area vertex and is not inside it. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/within.md) | `true` if the point is inside the area. |

All methods throw `ArgumentNullException` if an argument is `null`.

## Example

This program creates a polygon with a hole and three points in memory, and analyzes each point's relation to the polygon:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.Math;

static Point Punto(string código, double x, double y) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, 0) };

var parcela = new Polygon(new Code("PARCELA"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 0), new Point3D(10, 0, 0), new Point3D(10, 10, 0), new Point3D(0, 10, 0), new Point3D(0, 0, 0),
});

var hueco = new Line(new Code("PARCELA"));
hueco.Points.Add(new[]
{
    new Point3D(4, 4, 0), new Point3D(6, 4, 0), new Point3D(6, 6, 0), new Point3D(4, 6, 0), new Point3D(4, 4, 0),
});
parcela.Holes.Add(hueco);

var interior = Punto("INTERIOR", 2, 2);
var enHueco = Punto("HUECO", 5, 5);
var vértice = Punto("VERTICE", 4, 4);

Console.WriteLine($"Within(INTERIOR): {PointArea.Within(interior, parcela)}");     // True
Console.WriteLine($"Within(HUECO): {PointArea.Within(enHueco, parcela)}");         // False
Console.WriteLine($"Disjoint(HUECO): {PointArea.Disjoint(enHueco, parcela)}");     // True
Console.WriteLine($"Coincident(VERTICE): {PointArea.Coincident(vértice, parcela)}"); // True
```
