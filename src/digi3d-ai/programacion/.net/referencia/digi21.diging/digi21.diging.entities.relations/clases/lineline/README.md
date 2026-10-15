# LineLine
<!-- id: lineline -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre dos líneas.

```csharp
public static class LineLine
```

Los dos parámetros, `a` y `b`, son de tipo [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). Los métodos tratan una línea cerrada igual que una abierta: el primer vértice y el último son los extremos de la línea.

Los métodos analizan los vértices comunes de las dos líneas; no calculan intersecciones entre lados. Dos líneas que se cruzan sin un vértice común en el cruce son disjuntas. Las relaciones no son excluyentes: por ejemplo, dos líneas pueden cumplir a la vez `EndpointJoinEndpoint` y `Join`.

En las descripciones, un vértice intermedio es un vértice que no es ni el primero ni el último de su línea.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/across.md) | `true` si las dos líneas se cruzan en un vértice intermedio común. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/disjoint.md) | `true` si las dos líneas no tienen ningún vértice común. |
| [EndpointJoinEndpoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinendpoint.md) | `true` si un extremo de una línea coincide con un extremo de la otra y las líneas no son iguales. |
| [EndpointJoinExcludingEndpoints](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/endpointjoinexcludingendpoints.md) | `true` si un extremo de `a` coincide con un vértice intermedio de `b`. |
| [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/equal.md) | `true` si las dos líneas tienen los mismos vértices en el mismo orden o en orden inverso. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/join.md) | `true` si las dos líneas tienen un vértice intermedio común, sin lados comunes ni cruce. |
| [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/lineline/metodos-estaticos/overlap.md) | `true` si las dos líneas comparten al menos un lado y no son iguales. |

Todos los métodos lanzan `ArgumentNullException` si `a` o `b` es `null`.

## Ejemplo

Este programa crea cinco líneas, analiza sus relaciones y guarda cuatro de ellas en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md):

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
var b = Línea("B", new Point3D(0, 10, 0), new Point3D(5, 5, 0), new Point3D(10, 0, 0));  // Cruza a en el vértice (5, 5).
var c = Línea("C", new Point3D(10, 10, 0), new Point3D(20, 10, 0));                       // Empieza en el último vértice de a.
var d = Línea("D", new Point3D(5, 5, 0), new Point3D(5, -5, 0));                          // Empieza en un vértice intermedio de a.
var inversa = Línea("A", new Point3D(10, 10, 0), new Point3D(5, 5, 0), new Point3D(0, 0, 0));

Console.WriteLine($"Across(a, b): {LineLine.Across(a, b)}");                                         // True
Console.WriteLine($"Disjoint(a, b): {LineLine.Disjoint(a, b)}");                                     // False
Console.WriteLine($"EndpointJoinEndpoint(a, c): {LineLine.EndpointJoinEndpoint(a, c)}");             // True
Console.WriteLine($"EndpointJoinExcludingEndpoints(d, a): {LineLine.EndpointJoinExcludingEndpoints(d, a)}"); // True
Console.WriteLine($"Equal(a, inversa): {LineLine.Equal(a, inversa)}");                               // True

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());
archivo.Add(new Entity[] { a, b, c, d });
return 0;
```
