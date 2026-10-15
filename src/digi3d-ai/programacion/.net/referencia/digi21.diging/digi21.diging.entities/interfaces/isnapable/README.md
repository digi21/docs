# ISnapable
<!-- id: isnapable -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidad sobre la que se puede tentativar (*snap*, enganchar el cursor a un vértice o a un segmento): calcula el vértice más cercano, la proyección sobre el segmento más cercano y la distancia a una coordenada.

```csharp
public interface ISnapable
```

Tipos que la implementan: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/), [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/), [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) y sus tipos derivados (`Line`, `Polygon`, `Point`, `Text`). `ReadOnlyComplex` no la implementa.

Las distancias que devuelven `NearestVertex` y `NearestSegment` se miden en el plano XY. En un polígono solo se analizan los vértices y segmentos del contorno exterior: los huecos no se tienen en cuenta.

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Devuelve el vector desde `coordinate` hasta el punto de la entidad más cercano. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Busca el segmento más cercano a `coordinate` y devuelve la proyección perpendicular sobre él, su índice y la distancia. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Busca el vértice más cercano a `coordinate` y devuelve sus coordenadas, su índice y la distancia. |

## Ejemplo

Este programa busca, para una misma coordenada, el vértice y el segmento más cercanos de una línea y de un punto, y la distancia a cada entidad:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Tentativas <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());

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
        // Una línea lanza Exception si la proyección no cae dentro de ningún segmento.
        Console.WriteLine(e.Message);
    }

    // Vector desde el cursor hasta el punto más cercano de la entidad.
    Point3D vector = entidad.Distance(cursor);
    Console.WriteLine($"Distancia 3D {vector.Module}, en XY {vector.Point2D.Module}");
}

archivo.Add(línea);
archivo.Add(poste);
return 0;
```
