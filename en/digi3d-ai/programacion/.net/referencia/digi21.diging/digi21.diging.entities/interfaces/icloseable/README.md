# ICloseable
<!-- id: icloseable -->
<!-- origen: 4aa13436fa706ff73db9dafa623022662c1c78b4 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity that can form an enclosed area: indicates whether it is closed, calculates a point inside it and a coordinate's position relative to the enclosed area.

```csharp
public interface ICloseable
```

Implementing types: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (and [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) and [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (and [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

A polygon is always considered closed. A line encloses an area if its first and last vertices match in X and Y; `InteriorPoint` and `AnalyzePointPosition` throw `InvalidOperationException` if the line's first and last vertices do not match in X and Y.

## Properties

| Member | Description |
| :--- | :--- |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | `true` if the first and last vertices match in X and Y. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | `true` if the first and last vertices match in X, Y and Z. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md) | Coordinate inside the enclosed area and, for a polygon, outside its holes. |

## Methods

| Member | Description |
| :--- | :--- |
| [`PointPosition AnalyzePointPosition(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Indicates whether `coordinate` is outside, inside or on the enclosed area's boundary, in the XY plane. |

## Example

This program creates a parcel with an interior courtyard as a hole, queries three coordinates' positions and places a label at an interior point of the parcel outside the courtyard:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: PosicionPunto <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var parcela = new Polygon(new Code("050101"));
parcela.Points.Add(new[]
{
    new Point3D(0.0, 0.0, 0.0),
    new Point3D(100.0, 0.0, 0.0),
    new Point3D(100.0, 100.0, 0.0),
    new Point3D(0.0, 100.0, 0.0),
    new Point3D(0.0, 0.0, 0.0),
});

var patio = new Line(new Code("050101"));
patio.Points.Add(new[]
{
    new Point3D(40.0, 40.0, 0.0),
    new Point3D(60.0, 40.0, 0.0),
    new Point3D(60.0, 60.0, 0.0),
    new Point3D(40.0, 60.0, 0.0),
    new Point3D(40.0, 40.0, 0.0),
});
parcela.Holes.Add(patio);

ICloseable recinto = parcela;
Console.WriteLine($"Cerrado: {recinto.Closed}, cerrado en XYZ: {recinto.ClosedXYZ}");

foreach (var consulta in new[] { new Point3D(10.0, 10.0, 0.0), new Point3D(50.0, 50.0, 0.0), new Point3D(100.0, 50.0, 0.0) })
{
    PointPosition posición = recinto.AnalyzePointPosition(consulta);
    Console.WriteLine($"{consulta}: {posición}");
}

// Point inside the enclosed area and outside the hole, for example for a label.
var rótulo = new Text(new Code("080101")) { Txt = "Parcela", Coordinate = recinto.InteriorPoint, TextHeight = 2.0 };

archivo.Add(parcela);
archivo.Add(rótulo);
return 0;
```
