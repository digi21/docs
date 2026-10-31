# AreaArea
<!-- id: areaarea -->
<!-- origen: af12008b73dd1a725a49459c1fd2ca5dc3281820 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Methods that analyze the relation between two areas.

```csharp
public static class AreaArea
```

An area is a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) or a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). Each method has an overload for every combination of the two types, except `OuterRingAdjacent`, which has no `(ReadOnlyLine, ReadOnlyLine)` overload.

Relations between two areas are mutually exclusive: for each pair of areas `a` and `b`, in that order, exactly one of these nine holds:

| Relation | Method returning `true` |
| :--- | :--- |
| Equal | [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/equal.md)`(a, b)` |
| Disjoint | [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/disjoint.md)`(a, b)` |
| Have a joining point | [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md)`(a, b)` |
| Adjacent | [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md)`(a, b)` |
| `a` completely inside `b` | [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(a, b)` |
| `a` inside `b` | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md)`(a, b)` |
| `b` completely inside `a` | [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(b, a)` |
| `b` inside `a` | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md)`(b, a)` |
| Overlap | [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/overlap.md)`(a, b, out _)` |

Because the relations are mutually exclusive, `Within(a, b)` returns `false` when `a` is completely inside `b`. To find whether `a` is inside `b` in either case, combine `Within(a, b) || CompletelyWithin(a, b)`.

## How two areas are classified

These methods only analyze vertices; they do not calculate intersections between edges. For each vertex of one area, they check whether it coincides with a vertex of the other area (a common vertex) or is inside or outside the other area. A vertex inside a hole of the other area counts as outside. A vertex on an edge of the other area that coincides with none of its vertices is ignored. Comparisons take place in the XY plane, ignoring Z, with the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance, and the result does not depend on the rings' starting vertices or directions.

| Relation | Condition |
| :--- | :--- |
| Equal | Both outer rings have the same vertices, as do the holes, with any starting vertex and direction. Consecutive duplicate vertices do not count. They are also equal if there are common vertices and neither area has a vertex inside or outside the other (vertices that are not common lie on the other area's edges). |
| Disjoint | The bounding boxes in the XY plane do not touch, or neither area has a vertex inside the other and there are no common vertices. |
| `a` completely inside `b` | The vertices of `a` are inside `b` or on its edges, at least one is inside, none is common, and no vertex of `b`, including holes, is inside `a`. |
| `a` inside `b` | No vertex of `a` is outside `b`, at least one is common, and no vertex of `b`, including holes, is inside `a`. If no vertex of `a` is inside `b` (all are common or on edges of `b`), an interior point of `a` is analyzed: `a` is inside `b` if that point is inside `b`. |
| Adjacent | Neither area has a vertex inside the other, there are common vertices and at least one common edge (two consecutive vertices of a ring of `a` are also consecutive vertices of a ring of `b`). |
| Have a joining point | Neither area has a vertex inside the other, there are common vertices and no common edge. |
| Overlap | Any other case: one area has vertices inside the other and neither contains the other. |

Consequences of analyzing only vertices:

* If two areas cross without common vertices at the crossing or vertices inside the other area, the crossing is not detected: the areas are considered disjoint.
* If two areas share part of an edge without common vertices, the contact is not detected either.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `a` or `b` is `null`. |
| `SEHException` (`System.Runtime.InteropServices`) | An area has an unclosed ring (fewer than 4 vertices, or the first vertex does not coincide with the last), a ring with zero area or a spike (a vertex whose two neighbors coincide). Native code throws an exception with the reason and coordinates, and .NET receives it as `SEHException`. Methods validate rings before comparing bounding boxes, so they also throw the exception for two distant areas. |

## Static methods

| Method | Description |
| :--- | :--- |
| [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md) | `true` if the two areas are adjacent: they share at least one edge and neither has a vertex inside the other. |
| [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md) | `true` if the first area is inside the second without common vertices. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/disjoint.md) | `true` if the two areas are disjoint. |
| [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/equal.md) | `true` if the two areas are equal. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md) | `true` if the two areas have a joining point. |
| [OuterRingAdjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/outerringadjacent.md) | Result of `Adjacent` using each polygon's outer ring, without holes. |
| [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/overlap.md) | `true` if the two areas overlap. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md) | `true` if the first area is inside the second with at least one common vertex. |

## Example

This program creates four squares, analyzes their relations and saves them in a [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesAreaArea <salida.bind>");
    return 1;
}

// Square with its closing vertex: AreaArea throws an exception if a ring is not closed.
static Polygon Cuadrado(string código, double x, double y, double lado)
{
    var polígono = new Polygon(new Code(código));
    polígono.Points.Add(new[]
    {
        new Point3D(x, y, 0),
        new Point3D(x + lado, y, 0),
        new Point3D(x + lado, y + lado, 0),
        new Point3D(x, y + lado, 0),
        new Point3D(x, y, 0),
    });
    return polígono;
}

var a = Cuadrado("A", 0, 0, 10);
var b = Cuadrado("B", 10, 0, 10);  // Shares the edge from (10, 0) to (10, 10) with a.
var c = Cuadrado("C", 5, 5, 10);   // Its vertex (5, 5) is inside a and vertex (10, 10) of a is inside c.
var d = Cuadrado("D", 2, 2, 3);    // All its vertices are inside a.

Console.WriteLine($"Adjacent(a, b): {AreaArea.Adjacent(a, b)}");                 // True
Console.WriteLine($"Disjoint(a, b): {AreaArea.Disjoint(a, b)}");                 // False
Console.WriteLine($"CompletelyWithin(d, a): {AreaArea.CompletelyWithin(d, a)}"); // True
Console.WriteLine($"CompletelyWithin(a, d): {AreaArea.CompletelyWithin(a, d)}"); // False

if (AreaArea.Overlap(a, c, out var vértice))
    Console.WriteLine($"a y c se solapan; vértice de a dentro de c: ({vértice.X}, {vértice.Y})"); // (10, 10)

using var archivo = new BinDouble(args[0]);
archivo.Add(a);
archivo.Add(b);
archivo.Add(c);
archivo.Add(d);
return 0;
```
