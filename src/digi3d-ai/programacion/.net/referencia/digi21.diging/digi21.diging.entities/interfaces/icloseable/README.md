# ICloseable
<!-- id: icloseable -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidad que puede formar un recinto cerrado: indica si está cerrada, calcula un punto en su interior y la posición de una coordenada respecto al recinto.

```csharp
public interface ICloseable
```

Tipos que la implementan: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (y [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) y [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (y [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

Un polígono siempre se considera cerrado. Una línea es un recinto si su primer y su último vértice coinciden en X e Y; `InteriorPoint` y `AnalyzePointPosition` lanzan `InvalidOperationException` con una línea que no lo cumple.

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | `true` si el primer y el último vértice coinciden en X e Y. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | `true` si el primer y el último vértice coinciden en X, Y y Z. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md) | Coordenada en el interior del recinto y, en un polígono, fuera de sus huecos. |

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`PointPosition AnalyzePointPosition(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Indica si `coordinate` está fuera, dentro o sobre el borde del recinto, en el plano XY. |

## Ejemplo

Este programa crea una parcela con un patio interior como hueco, consulta la posición de tres coordenadas y coloca un rótulo en un punto interior de la parcela fuera del patio:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: PosicionPunto <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());

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

// Punto en el interior del recinto y fuera del hueco, por ejemplo para un rótulo.
var rótulo = new Text(new Code("080101")) { Txt = "Parcela", Coordinate = recinto.InteriorPoint, TextHeight = 2.0 };

archivo.Add(parcela);
archivo.Add(rótulo);
return 0;
```
