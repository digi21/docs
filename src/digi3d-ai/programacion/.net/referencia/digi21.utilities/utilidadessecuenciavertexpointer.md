# UtilidadesSecuenciaVertexPointer
<!-- id: digi21.utilities.utilidadessecuenciavertexpointer -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Método de extensión de `IEnumerable<VertexPointer>`. Cada nodo que devuelve [NodeDetector.DetectNodes](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/nodedetector.md) es un `IGrouping<Point2D, VertexPointer>`, que es también un `IEnumerable<VertexPointer>`.

```csharp
public static class UtilidadesSecuenciaVertexPointer
```

## Métodos estáticos

### LíneaLlegaANodo

```csharp
public static bool LíneaLlegaANodo(this IEnumerable<VertexPointer> secuencia, ReadOnlyLine line)
```

Devuelve `true` si algún [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) de `secuencia` tiene como `Line` la instancia `line`. La comparación es de referencias.

Lanza `ArgumentNullException` si `secuencia` es `null`.

## Ejemplo

Este programa detecta los nodos de tres líneas y muestra, para cada nodo, si la línea `a` llega a él:

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
