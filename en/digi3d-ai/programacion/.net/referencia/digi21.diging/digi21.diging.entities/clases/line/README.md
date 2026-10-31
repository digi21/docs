# Line
<!-- id: line -->
<!-- origen: 6d541a4f0ec584a5876352ae531da95e1e0301b0 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write line. Adds constructors and members modifying vertices to [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

```csharp
public class Line : ReadOnlyLine, IDesplazable, IDirectionable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) → `Line`

Implements: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/), [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/) and the interfaces of `ReadOnlyLine`.

A newly created `Line` has no vertices or minimum and maximum coordinates. Vertices are added using [Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/propiedades/points.md).

When added to a drawing file, the line becomes owned by the file (`Owner`) and is read-only: members on this page that modify it throw `InvalidOperationException`. The same applies to a `Line` forming part of a polygon in a file (a hole).

The members of `ReadOnlyLine` and `Entity` are described on their pages.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [`Line(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/constructores.md#line-code) | Line without vertices, with one code. |
| [`Line(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/constructores.md#line-ienumerable-code) | Line without vertices, with multiple codes. |

## Properties

| Property | Description |
| :--- | :--- |
| [`Point3DCollection Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/propiedades/points.md) | Read/write line vertices. Hides `ReadOnlyLine.Points`. |

## Methods

| Method | Description |
| :--- | :--- |
| [`void Close()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/metodos/close.md) | Closes the line by appending a copy of the first vertex. |
| [`void ChangeDirection()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/metodos/changedirection.md) | Reverses vertex order. |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset.X` and `offset.Y` to all vertices. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset` to all vertices. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x` and `y` to all vertices. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x`, `y` and `z` to all vertices. |

The `Offset` methods recalculate the line's minimum and maximum coordinates after moving it, as well as those of each containing entity: the complex it belongs to or the polygon of which it is a hole. A polygon's box depends only on its outer boundary, so moving a hole does not change it.

Exceptions from `Close`, `ChangeDirection` and `Offset`:

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The line is read-only. |

## Example

This program creates a line, closes it, calculates its area and perimeter, reverses its direction, offsets it and writes it to a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaLinea <salida.bind>");
    return 1;
}

var parcela = new Line(new Code("080100"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 10),
    new Point3D(0, 20, 10),
    new Point3D(30, 20, 12),
    new Point3D(30, 0, 12),
});

Console.WriteLine(parcela.Closed);     // False
parcela.Close();                        // Append a copy of the first vertex.
Console.WriteLine(parcela.Closed);     // True
Console.WriteLine(parcela.Points.Count); // 5

// Clockwise vertices: Area is positive.
Console.WriteLine(parcela.Area);       // 600
Console.WriteLine(parcela.Perimeter);  // 100

parcela.ChangeDirection();
Console.WriteLine(parcela.Area);       // -600

Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(15, 10, 0))); // Interior

parcela.Offset(100, 0);
Console.WriteLine(parcela.FirstVertex); // First vertex offset by 100 in X.

using var archivo = new BinDouble(args[0]);
archivo.Add(parcela);
return 0;
```
