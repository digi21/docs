# LineArea
<!-- id: linearea -->
<!-- origen: 865ec6506df15f50c17b0be0a3d14a414454f786 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between a line and an area.

```csharp
public static class LineArea
```

The first parameter, `line`, is a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). The second, `area`, is a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) or a closed `ReadOnlyLine`; each method has an overload for each type.

Methods do not check whether a `ReadOnlyLine` passed as `area` is closed. If it is not (it has fewer than 4 vertices or its first vertex does not coincide with its last), no point is inside it.

Each line vertex occupies one of these positions relative to the area:

| Position | Meaning |
| :--- | :--- |
| Inside | Inside the area. A vertex inside a polygon's hole is not inside. |
| Outside | Outside the area or inside a hole. |
| On the boundary | On a vertex or edge of the outer ring or a hole. |

Methods analyze vertex positions and common vertices; they do not calculate intersections between edges. Unlike [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/), `LineArea` relations are not mutually exclusive: for example, a line can satisfy both `Join` and `EndpointJoin`.

## Static methods

| Method | Description |
| :--- | :--- |
| [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/across.md) | `true` if the line passes through the area's interior between two of its vertices on the boundary. |
| [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/adjacent.md) | `true` if the line shares at least one edge with the area's boundary and no line vertex is inside. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/disjoint.md) | `true` if the line and area have no common vertices and not all line vertices are inside the area. |
| [EndpointJoin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/endpointjoin.md) | `true` if the first or last line vertex coincides with an area vertex. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/join.md) | `true` if an intermediate line vertex coincides with an area vertex, without common edges or crossing. |
| [TerminatesWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/terminateswithin.md) | `true` if the line has a vertex outside the area and starts or ends inside. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/within.md) | `true` if all line vertices are inside the area. |

All methods throw `ArgumentNullException` if `line` or `area` is `null`.

## Example

This program creates a square area and five lines, analyzes each line's relation to the area and saves the entities in a [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesLineaArea <salida.bind>");
    return 1;
}

static Line Línea(string código, params Point3D[] vértices)
{
    var línea = new Line(new Code(código));
    línea.Points.Add(vértices);
    return línea;
}

var área = new Polygon(new Code("AREA"));
área.Points.Add(new[]
{
    new Point3D(0, 0, 0), new Point3D(10, 0, 0), new Point3D(10, 10, 0), new Point3D(0, 10, 0), new Point3D(0, 0, 0),
});

var entra = Línea("ENTRA", new Point3D(-5, 5, 0), new Point3D(5, 5, 0));
var dentro = Línea("DENTRO", new Point3D(3, 3, 0), new Point3D(7, 7, 0));
var borde = Línea("BORDE", new Point3D(0, 0, 0), new Point3D(10, 0, 0));
// Vertices (0, 5) and (10, 5) lie on the area edges, and their midpoint is inside.
var cruza = Línea("CRUZA", new Point3D(-5, 5, 0), new Point3D(0, 5, 0), new Point3D(10, 5, 0), new Point3D(15, 5, 0));
var esquina = Línea("ESQUINA", new Point3D(10, 10, 0), new Point3D(15, 15, 0));

Console.WriteLine($"TerminatesWithin(entra, área): {LineArea.TerminatesWithin(entra, área)}"); // True
Console.WriteLine($"Within(dentro, área): {LineArea.Within(dentro, área)}");                   // True
Console.WriteLine($"Adjacent(borde, área): {LineArea.Adjacent(borde, área)}");                 // True
Console.WriteLine($"Across(cruza, área): {LineArea.Across(cruza, área)}");                     // True
Console.WriteLine($"EndpointJoin(esquina, área): {LineArea.EndpointJoin(esquina, área)}");     // True

using var archivo = new BinDouble(args[0]);
archivo.Add(área);
archivo.Add(new Entity[] { entra, dentro, borde, cruza, esquina });
return 0;
```
