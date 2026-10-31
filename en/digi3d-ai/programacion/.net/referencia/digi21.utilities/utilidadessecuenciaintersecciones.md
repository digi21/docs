# UtilidadesSecuenciaIntersecciones
<!-- id: digi21.utilities.utilidadessecuenciaintersecciones -->
<!-- origen: cbf16c63e69f9e0e36d161425a6898cd55b4d35e -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Extension method for intersection sequences returned by [IntersectionDetector.DetectIntersections](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md). Each intersection is an `IGrouping<Point2D, SegmentPointer>`: the key is the intersection's coordinate and the elements are segments ([SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/)) passing through it.

```csharp
public static class UtilidadesSecuenciaIntersecciones
```

## Static methods

### SoloDeSegmento

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> SoloDeSegmento(
    this IEnumerable<IGrouping<Point2D, SegmentPointer>> secuencia,
    ReadOnlyLine línea,
    int númeroSegmento)
```

Returns intersections from `secuencia` containing a `SegmentPointer` whose `Line` is `línea` (the same instance) and whose `FirstVertex` is `númeroSegmento`. The sequence is evaluated when iterated.

An intersection is returned once for each `SegmentPointer` satisfying the condition: if `línea` passes through the same intersection twice with the same `FirstVertex`, the intersection appears twice. Apply `Distinct()` to the result if you need each intersection only once.

When the intersection coincides with a line vertex, `IntersectionDetector` assigns that vertex's index to both `FirstVertex` and `SecondVertex`. In that case, `númeroSegmento` is the vertex index.

## Example

This program intersects a horizontal line with two vertical lines and shows intersections for segment 0 of the second vertical:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Topology;
using Digi21.Math;
using Digi21.Utilities;

Line CreaLínea(params Point3D[] vértices)
{
    var línea = new Line(new Code("020100"));
    foreach (var vértice in vértices)
        línea.Points.Add(vértice);
    return línea;
}

var horizontal = CreaLínea(new Point3D(0, 5, 0), new Point3D(20, 5, 0));
var verticalA = CreaLínea(new Point3D(3, 0, 0), new Point3D(3, 10, 0));
var verticalB = CreaLínea(new Point3D(15, 0, 0), new Point3D(15, 10, 0));

ReadOnlyLine[] líneas = [horizontal, verticalA, verticalB];
var intersecciones = líneas.DetectIntersections().ToList();

foreach (var intersección in intersecciones.SoloDeSegmento(verticalB, 0))
    Console.WriteLine($"{intersección.Key.X} {intersección.Key.Y}"); // 15 5
```
