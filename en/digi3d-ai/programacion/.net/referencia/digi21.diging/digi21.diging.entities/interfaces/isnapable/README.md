# ISnapable
<!-- id: isnapable -->
<!-- origen: 94a67e3d340499b5bf0e0369bb426c57681b521a -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity to which the cursor can snap (attach to a vertex or segment): calculates the closest vertex, projection onto the closest segment, and distance to a coordinate.

```csharp
public interface ISnapable
```

Implementing types: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) and their derived types (`Line`, `Polygon`, `Point`, `Text`). `ReadOnlyComplex` does not implement it.

Distances returned by `NearestVertex` and `NearestSegment` are measured in the XY plane. For a polygon, only outer boundary vertices and segments are analyzed: holes are ignored.

## Methods

| Member | Description |
| :--- | :--- |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Returns the vector from `coordinate` to the entity's closest point. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Finds the closest segment to `coordinate` and returns its perpendicular projection, index and distance. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Finds the closest vertex to `coordinate` and returns its coordinates, index and distance. |

## Example

For the same coordinate, this program finds the closest vertex and segment of a line and a point, and the distance to each entity:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Tentativas <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var línea = new Line(new Code("040101"));
línea.Points.Add(new Point3D(0.0, 0.0, 0.0));
línea.Points.Add(new Point3D(100.0, 0.0, 10.0));
línea.Points.Add(new Point3D(100.0, 100.0, 20.0));

var poste = new Point(new Code("030101")) { Coordinate = new Point3D(50.0, 30.0, 5.0) };

var cursor = new Point3D(40.0, 5.0, 0.0);

foreach (ISnapable entidad in new ISnapable[] { línea, poste })
{
    var distanciaVértice = entidad.NearestVertex(cursor, out Point3D vértice, out int índiceVértice);
    Console.WriteLine($"Vértice {índiceVértice} en {vértice}, a {distanciaVértice} (XY)");

    try
    {
        var distanciaSegmento = entidad.NearestSegment(cursor, out Point3D proyección, out int segmento);
        Console.WriteLine($"Segmento {segmento}, proyección {proyección}, a {distanciaSegmento} (XY)");
    }
    catch (Exception e)
    {
        // A line throws Exception if the projection falls on no segment.
        Console.WriteLine(e.Message);
    }

    // Vector from the cursor to the entity's closest point.
    Point3D vector = entidad.Distance(cursor);
    Console.WriteLine($"Distancia 3D {vector.Module}, en XY {vector.Point2D.Module}");
}

archivo.Add(línea);
archivo.Add(poste);
return 0;
```
