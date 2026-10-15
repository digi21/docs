# UtilidadesSecuenciaIntersecciones
<!-- id: digi21.utilities.utilidadessecuenciaintersecciones -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Método de extensión para las secuencias de intersecciones que devuelve [IntersectionDetector.DetectIntersections](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md). Cada intersección es un `IGrouping<Point2D, SegmentPointer>`: la clave es la coordenada de la intersección y los elementos son los segmentos ([SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/)) que pasan por ella.

```csharp
public static class UtilidadesSecuenciaIntersecciones
```

## Métodos estáticos

### SoloDeSegmento

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> SoloDeSegmento(
    this IEnumerable<IGrouping<Point2D, SegmentPointer>> secuencia,
    ReadOnlyLine línea,
    int númeroSegmento)
```

Devuelve las intersecciones de `secuencia` en las que hay un `SegmentPointer` cuya `Line` es `línea` (la misma instancia) y cuyo `FirstVertex` es `númeroSegmento`. La secuencia se evalúa al recorrerla.

Una intersección se devuelve una vez por cada `SegmentPointer` que cumple la condición: si `línea` pasa dos veces por la misma intersección con el mismo `FirstVertex`, la intersección aparece dos veces. Aplica `Distinct()` al resultado si necesitas cada intersección una sola vez.

Cuando la intersección coincide con un vértice de la línea, `IntersectionDetector` asigna a `FirstVertex` y a `SecondVertex` el índice de ese vértice. En ese caso `númeroSegmento` es el índice del vértice.

## Ejemplo

Este programa cruza una línea horizontal con dos verticales y muestra las intersecciones del segmento 0 de la segunda vertical:

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
