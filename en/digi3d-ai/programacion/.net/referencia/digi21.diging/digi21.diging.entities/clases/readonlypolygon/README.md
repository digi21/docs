# ReadOnlyPolygon
<!-- id: readonlypolygon -->
<!-- origen: 362c62f74e5d212f94297ca7df7624790c472777 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only polygon: an outer boundary and zero or more holes. The type of polygons returned by drawing files when iterating through their entities.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable, ICloseable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyPolygon`

Derived types: [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

Implements: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/) and the interfaces of `Entity`.

The class has no public constructors. To create a polygon, use [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/). To modify a polygon read from a file, modify the copy returned by `Clone()`.

The polygon's enclosed area is the inside of its outer boundary minus the inside of its holes. `AnalyzePointPosition`, `InteriorPoint` and `Area` account for holes; `Distance`, `NearestVertex` and `NearestSegment` use only the outer boundary.

Members inherited from `Entity` are described in [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Properties

| Property | Description |
| :--- | :--- |
| [`IReadOnlyList<Point3D> Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md) | Outer boundary vertices. |
| [`IReadOnlyList<ReadOnlyLine> Holes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md) | Holes. |
| [`double Area { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/area.md) | Signed outer boundary area minus each hole's signed area. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/interiorpoint.md) | A point in the enclosed area, outside the holes. |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | Always `true`. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | Always `true`. |

## Methods

| Method | Description |
| :--- | :--- |
| [`Polygon Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/metodos/clone.md) | Read/write copy of the polygon, including its holes. |
| [`PointPosition AnalyzePointPosition(Point3D point)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Coordinate's position relative to the enclosed area, in the X, Y plane. Returns `Interior` inside the outer boundary and outside holes, `Exterior` outside the outer boundary or inside a hole, and `Tangent` on the outer boundary or a hole's boundary. An open boundary or one with fewer than 4 vertices returns `Exterior`. In the installed assembly, the parameter is named `coordinate`. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Vector from `coordinate` to the closest point on the outer boundary (a vertex or projection onto a segment). Throws `InvalidOperationException` if the polygon has no vertices. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | X, Y plane distance to the closest outer boundary vertex; returns its coordinates and index. Throws `InvalidOperationException` if the polygon has no vertices. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | X, Y plane distance to the closest outer boundary segment among those onto which the perpendicular projection falls; returns the projection and segment index. Throws `InvalidOperationException` if the polygon has no vertices and `Exception` if the projection falls on no segment. |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Splits the polygon using `limit`. See the note in this section. |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md) | Polygons forming this polygon's enclosed area minus the area enclosed by `limit`. |
| `string ToString()` | Localized text with the type, `Entity` data, vertices and hole count. |

`Clip` returns the polygons (`Polygon`) into which `limit` divides the enclosed area, with this polygon's codes. Returns an empty collection if `limit` does not intersect the outer boundary or holes and is not entirely inside the polygon, and also if splitting produces only one polygon. Throws `Exception` if topological analysis finds duplicate points or single-point arcs, or there is insufficient data.

## Example

This program lists a `.bind` file's polygons with their areas and holes, and writes a copy without holes of each polygon that has holes to another file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 2)
{
    Console.WriteLine("Uso: LeePoligonos <entrada.bind> <salida.bind>");
    return 1;
}

using var entrada = new BinDouble(args[0], true);
using var salida = new BinDouble(args[1], () => entrada.Wkt);

foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyPolygon polígono)
        continue;

    Console.WriteLine($"{polígono.Codes[0].Name}: área {polígono.Area:F2}, {polígono.Holes.Count} huecos");

    foreach (var hueco in polígono.Holes)
        Console.WriteLine($"  hueco de {hueco.Points.Count} vértices, área {hueco.Area:F2}");

    // Write a copy without holes of each polygon that has holes to the output.
    if (polígono.Holes.Count == 0)
        continue;

    var copia = polígono.Clone();
    copia.Holes.Clear();
    salida.Add(copia);
}

return 0;
```
