# ReadOnlyLine
<!-- id: readonlyline -->
<!-- origen: d471a34747aebbf33be09d54593b431bb067a0dd -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only line: a sequence of vertices with X, Y and Z coordinates. The type of lines returned by drawing files when iterating through their entities.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyLine`

Derived types: [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/).

Implements: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/) and the interfaces of `Entity`.

The class has no public constructors. To create a line, use [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). To modify a line read from a file, modify the copy returned by `Clone()`.

A line is closed if its last vertex has the same X and Y as the first. A closed line encloses an area: `ICloseable` members and `Area` are meaningful only for closed lines.

Members inherited from `Entity` (codes, colors, attributes, minimum and maximum coordinates) are described in [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Properties

| Property | Description |
| :--- | :--- |
| [`IReadOnlyList<Point3D> Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/points.md) | Line vertices. |
| [`Point3D FirstVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/firstvertex.md) | First vertex. |
| [`Point3D LastVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/lastvertex.md) | Last vertex. |
| [`Segment FirstSegment { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/firstsegment.md) | Segment from the first to the second vertex. |
| [`Segment LastSegment { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/lastsegment.md) | Segment from the penultimate to the last vertex. |
| [`double Perimeter { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/perimeter.md) | Length in the X, Y plane. |
| [`double Perimeter3D { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/perimeter3d.md) | Length in space. |
| [`double Area { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/area.md) | Signed enclosed area in the X, Y plane. |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | `true` if the first and last vertices match in X and Y. Throws `InvalidOperationException` if the line has fewer than 2 vertices. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | `true` if the first and last vertices match in X, Y and Z. Throws `InvalidOperationException` if the line has fewer than 2 vertices. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md) | A point inside the enclosed area. Throws `InvalidOperationException` if the line is not closed. |

## Methods

| Method | Description |
| :--- | :--- |
| [`Line Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/metodos/clone.md) | Read/write copy of the line. |
| [`PointPosition AnalyzePointPosition(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Position of `coordinate` relative to the enclosed area, in the X, Y plane: `Interior`, `Exterior` or `Tangent` (on the boundary). Throws `InvalidOperationException` if the line is not closed. A closed line with fewer than 4 vertices always returns `Exterior`. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Vector from `coordinate` to the closest point on the line: the closest vertex or projection onto the closest segment, whichever is closer in the X, Y plane. Throws `InvalidOperationException` if the line has no vertices. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | X, Y plane distance to the closest vertex; returns its coordinates and index. Throws `InvalidOperationException` if the line has no vertices. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | X, Y plane distance to the closest segment among those onto which the perpendicular projection of `coordinate` falls; returns the projection and segment index (its starting vertex's index). Throws `InvalidOperationException` if the line has no vertices and `Exception` if the projection falls on no segment. |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Splits the line at its intersections with `limit`. See the list following this table. |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md) | Polygons forming this line's enclosed area minus the area enclosed by `limit`. |
| `string ToString()` | Localized text with the type, `Entity` data, vertex count and each vertex's number and coordinate. |

`Clip` behavior by line type:

- Closed line: returns closed lines, one for each area into which `limit` divides this line's enclosed area. Returns an empty collection if the two lines do not intersect. Throws `Exception` if topological analysis finds duplicate points or single-point arcs.
- Open line: returns the sections into which `limit` splits this line (with N intersections, N + 1 lines, including the first and last sections); `limit` is not split. Returns an empty collection if the two lines do not intersect.

## Example

This program lists a `.bind` file's lines with their lengths and writes to another file a copy of each closed line with its direction reversed:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 2)
{
    Console.WriteLine("Uso: LeeLineas <entrada.bind> <salida.bind>");
    return 1;
}

using var entrada = new BinDouble(args[0], true);
using var salida = new BinDouble(args[1], () => entrada.Wkt);

foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyLine línea || línea.Points.Count < 2)
        continue;

    Console.WriteLine($"{línea.Codes[0].Name}: {línea.Points.Count} vértices, {línea.Perimeter:F2} m");

    // Copy closed lines to the output with their direction reversed.
    if (!línea.Closed)
        continue;

    Console.WriteLine($"  Área {línea.Area:F2}, punto interior {línea.InteriorPoint}");

    var copia = línea.Clone();
    copia.ChangeDirection();
    salida.Add(copia);
}

return 0;
```
