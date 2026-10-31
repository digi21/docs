# UtilidadesSecuenciaVertexPointer
<!-- id: digi21.utilities.utilidadessecuenciavertexpointer -->
<!-- origen: ebb62c8d26735442b5250c2af4134b35387f6701 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

`IEnumerable<VertexPointer>` extension method. Each node returned by [NodeDetector.DetectNodes](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md) is an `IGrouping<Point2D, VertexPointer>`, which is also an `IEnumerable<VertexPointer>`.

```csharp
public static class UtilidadesSecuenciaVertexPointer
```

## Static methods

### LíneaLlegaANodo

```csharp
public static bool LíneaLlegaANodo(this IEnumerable<VertexPointer> secuencia, ReadOnlyLine line)
```

Returns `true` if a [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) in `secuencia` has the `line` instance as its `Line`. This is a reference comparison.

Throws `ArgumentNullException` if `secuencia` is `null`.

## Example

This program detects nodes for three lines and shows, for each node, whether line `a` reaches it:

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

var a = CreaLínea(new Point3D(0, 0, 0), new Point3D(10, 0, 0));
var b = CreaLínea(new Point3D(10, 0, 0), new Point3D(10, 10, 0));
var c = CreaLínea(new Point3D(10, 10, 0), new Point3D(0, 10, 0));

ReadOnlyLine[] líneas = [a, b, c];
foreach (var nodo in líneas.DetectNodes())
    Console.WriteLine($"{nodo.Key}: {nodo.Count()} extremos, ¿llega a? {nodo.LíneaLlegaANodo(a)}");
```
