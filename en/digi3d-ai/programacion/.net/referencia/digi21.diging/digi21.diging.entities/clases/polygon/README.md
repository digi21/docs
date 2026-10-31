# Polygon
<!-- id: polygon -->
<!-- origen: ed6f164a4bd0723e663c2c11611976d78a746ac4 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write polygon: an outer boundary and zero or more holes. Adds constructors, read/write boundary and hole collections, and `JoinPolygons` to [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/).

```csharp
public class Polygon : ReadOnlyPolygon
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) → `Polygon`

Implements: the interfaces of `ReadOnlyPolygon` ([ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/)) and those of `Entity`.

The outer boundary and each hole must repeat the first vertex at the end. The class does not close boundaries: with an open boundary, `AnalyzePointPosition` returns `Exterior`.

When added to a drawing file, the polygon becomes owned by the file (`Owner`) and is read-only: members on this page that modify it throw `InvalidOperationException`.

The members of `ReadOnlyPolygon` and `Entity` are described on their pages.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [`Polygon(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/constructores.md#polygon-code) | Polygon without vertices or holes, with one code. |
| [`Polygon(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/constructores.md#polygon-ienumerable-code) | Polygon without vertices or holes, with multiple codes. |

## Properties

| Property | Description |
| :--- | :--- |
| [`Point3DCollection Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/propiedades/points.md) | Read/write outer boundary vertices. Hides `ReadOnlyPolygon.Points`. |
| [`IList<Line> Holes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/propiedades/holes.md) | Read/write holes. Hides `ReadOnlyPolygon.Holes`. |

## Static methods

| Method | Description |
| :--- | :--- |
| [`Polygon JoinPolygons(Entity a, Entity b)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/metodos-estaticos/joinpolygons.md) | Polygon resulting from the union of the areas enclosed by `a` and `b`. |

## Example

This program creates a polygon with a hole, analyzes three coordinates' positions, joins it to an adjacent polygon and writes the result to a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaPoligono <salida.bind>");
    return 1;
}

// Outer boundary: the last vertex repeats the first.
var parcela = new Polygon(new Code("080100"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 0),
    new Point3D(0, 100, 0),
    new Point3D(100, 100, 0),
    new Point3D(100, 0, 0),
    new Point3D(0, 0, 0),
});

// The hole becomes owned by the polygon.
var patio = new Line(new Code("080100"));
patio.Points.Add(new[]
{
    new Point3D(40, 40, 0),
    new Point3D(40, 60, 0),
    new Point3D(60, 60, 0),
    new Point3D(60, 40, 0),
    new Point3D(40, 40, 0),
});
parcela.Holes.Add(patio);

Console.WriteLine(parcela.Area);                                             // 9600
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(50, 50, 0)));     // Exterior
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(10, 10, 0)));     // Interior
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(0, 50, 0)));      // Tangent

// An adjacent polygon along the X = 100 side.
var vecina = new Polygon(new Code("080100"));
vecina.Points.Add(new[]
{
    new Point3D(100, 0, 0),
    new Point3D(100, 100, 0),
    new Point3D(150, 100, 0),
    new Point3D(150, 0, 0),
    new Point3D(100, 0, 0),
});

// JoinPolygons throws Exception if the union does not form a single polygon.
var unión = Polygon.JoinPolygons(parcela, vecina);
Console.WriteLine($"{unión.Width} x {unión.Height}, {unión.Holes.Count} huecos");

using var archivo = new BinDouble(args[0]);
archivo.Add(unión);
return 0;
```
