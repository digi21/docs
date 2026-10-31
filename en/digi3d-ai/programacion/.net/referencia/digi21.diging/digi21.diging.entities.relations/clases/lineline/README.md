# LineLine
<!-- id: lineline -->
<!-- origen: 91af96cbef39bae0295af4edb95389218df86e04 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between two lines.

```csharp
public static class LineLine
```

Both parameters, `a` and `b`, are of type [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). Methods treat closed lines just like open ones: the first and last vertices are the line's endpoints.

Methods analyze the two lines' common vertices; they do not calculate intersections between edges. Two lines crossing without a common vertex at the crossing are disjoint. Relations are not mutually exclusive: for example, two lines can satisfy both `EndpointJoinEndpoint` and `Join`.

In these descriptions, an intermediate vertex is a vertex that is neither its line's first nor last.

## Static methods

| Method | Description |
| :--- | :--- |
| [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/across.md) | `true` if the two lines cross at a common intermediate vertex. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/disjoint.md) | `true` if the two lines have no common vertex. |
| [EndpointJoinEndpoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinendpoint.md) | `true` if an endpoint of one line coincides with an endpoint of the other and the lines are not equal. |
| [EndpointJoinExcludingEndpoints](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinexcludingendpoints.md) | `true` if an endpoint of `a` coincides with an intermediate vertex of `b`. |
| [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/equal.md) | `true` if the two lines have the same vertices in the same or reverse order. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/join.md) | `true` if the two lines have a common intermediate vertex, without common edges or crossing. |
| [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/overlap.md) | `true` if the two lines share at least one edge and are not equal. |

All methods throw `ArgumentNullException` if `a` or `b` is `null`.

## Example

This program creates five lines, analyzes their relations and saves four of them in a [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesLineaLinea <salida.bind>");
    return 1;
}

static Line Línea(string código, params Point3D[] vértices)
{
    var línea = new Line(new Code(código));
    línea.Points.Add(vértices);
    return línea;
}

var a = Línea("A", new Point3D(0, 0, 0), new Point3D(5, 5, 0), new Point3D(10, 10, 0));
var b = Línea("B", new Point3D(0, 10, 0), new Point3D(5, 5, 0), new Point3D(10, 0, 0));  // Crosses a at vertex (5, 5).
var c = Línea("C", new Point3D(10, 10, 0), new Point3D(20, 10, 0));                       // Starts at the last vertex of a.
var d = Línea("D", new Point3D(5, 5, 0), new Point3D(5, -5, 0));                          // Starts at an intermediate vertex of a.
var inversa = Línea("A", new Point3D(10, 10, 0), new Point3D(5, 5, 0), new Point3D(0, 0, 0));

Console.WriteLine($"Across(a, b): {LineLine.Across(a, b)}");                                         // True
Console.WriteLine($"Disjoint(a, b): {LineLine.Disjoint(a, b)}");                                     // False
Console.WriteLine($"EndpointJoinEndpoint(a, c): {LineLine.EndpointJoinEndpoint(a, c)}");             // True
Console.WriteLine($"EndpointJoinExcludingEndpoints(d, a): {LineLine.EndpointJoinExcludingEndpoints(d, a)}"); // True
Console.WriteLine($"Equal(a, inversa): {LineLine.Equal(a, inversa)}");                               // True

using var archivo = new BinDouble(args[0]);
archivo.Add(new Entity[] { a, b, c, d });
return 0;
```
