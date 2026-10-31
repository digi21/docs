# IntersectionDetector
<!-- id: digi21.diging.topology.intersectiondetector -->
<!-- origen: 523e17cd048f043ddc92d8513ac7ec914569d2c1 -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Detects intersections in the XY plane between lines in a sequence, or between one line and those in a sequence.

```csharp
public static class IntersectionDetector
```

## Result

All methods return an `IEnumerable<IGrouping<Point2D, SegmentPointer>>`. Each element is an intersection:

- `Key` is the intersection's XY coordinate.
- Group elements are [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/), one per line and segment passing through that coordinate. `Line` is the same instance as in the input sequence. If the intersection lies inside the segment, `FirstVertex` is the segment's first vertex index and `SecondVertex` its second vertex index. If the intersection coincides with a line vertex, `FirstVertex` and `SecondVertex` both contain that vertex's index.

Two intersections at the same coordinate, within the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance, form one group. Groups are returned sorted by X, then by Y for equal X. Intersections are calculated when the method is called, and the result can be iterated several times.

An intersection is a point where two segments cross or, if two segments overlap, each endpoint of the common section. Deleted lines (`Deleted`) and lines with fewer than 2 vertices are not analyzed.

To filter results by line and segment, use [UtilidadesSecuenciaIntersecciones.SoloDeSegmento](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaintersecciones.md), from the `Digi21.Utilities` package.

## Static methods

### DetectIntersections (line sequence)

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> DetectIntersections(
    this IEnumerable<ReadOnlyLine> entities,
    Func<ReadOnlyLine, bool> analyzeIntersectionsOfThisLine,
    Func<ReadOnlyLine, ReadOnlyLine, bool> analyzeIntersectionsBetweenThisLines,
    Func<Point2D, bool> insertIntersectionInThisCoordinate)
```

Detects intersections between all lines in `entities` and each line's self-intersections (where a line crosses itself). There is an overload for each combination of the three delegates: `DetectIntersections(entities)`, `DetectIntersections(entities, analyzeIntersectionsOfThisLine)`, `DetectIntersections(entities, analyzeIntersectionsBetweenThisLines)`, `DetectIntersections(entities, insertIntersectionInThisCoordinate)` and those accepting two delegates, always in the full signature's order. If an overload does not receive a delegate, it does not apply that delegate's filter.

| Parameter | Description |
| :--- | :--- |
| `entities` | Lines to analyze. The sequence is iterated only once. |
| `analyzeIntersectionsOfThisLine` | Called for each line in `entities`. If it returns `false`, the line is not analyzed. |
| `analyzeIntersectionsBetweenThisLines` | Called for each pair of lines whose boxes (minimum and maximum XY coordinates) touch. If it returns `false`, intersections between them are not sought. For self-intersections, called with the same line in both parameters. |
| `insertIntersectionInThisCoordinate` | Called with each intersection's coordinate, once per line passing through it. If it returns `false`, that `SegmentPointer` is not added to the result. |

Self-intersections are only sought in lines with more than 2 vertices. At a self-intersection, the group contains two `SegmentPointer` instances for the same line, one per intersecting segment.

### DetectIntersections (one line)

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> DetectIntersections(
    this ReadOnlyLine line,
    IEnumerable<ReadOnlyLine> entities,
    Func<ReadOnlyLine, bool> analyzeIntersectionsWithThisLine,
    Func<Point2D, bool> insertIntersectionInThisCoordinate)
```

Detects intersections of `line` with lines in `entities`. There are overloads without delegates, with only `analyzeIntersectionsWithThisLine`, and with only `insertIntersectionInThisCoordinate`.

| Parameter | Description |
| :--- | :--- |
| `line` | Line to analyze. Its self-intersections are not sought. |
| `entities` | Lines intersecting `line`. Omits `line` if it is in the sequence (the same instance), and each line whose box does not touch that of `line`. |
| `analyzeIntersectionsWithThisLine` | Called for each line in `entities` whose box touches that of `line`. If it returns `false`, the line is not analyzed. |
| `insertIntersectionInThisCoordinate` | Called with each intersection's coordinate. If it returns `false`, the intersection is not added to the result. |

Two `SegmentPointer` instances are added per intersection: one for `line` and one for the line in `entities` intersecting it. If several lines intersect `line` at the same coordinate, that coordinate's group contains all their `SegmentPointer` instances.

## Example

This program finds intersections between non-deleted lines in a `.bin` file, excluding self-intersections, and shows which lines intersect at each point:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Cruces <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var líneas = archivo.OfType<ReadOnlyLine>().ToList();

var cruces = líneas.DetectIntersections(
    analyzeIntersectionsBetweenThisLines: (a, b) => !ReferenceEquals(a, b));

foreach (var cruce in cruces)
{
    var segmentos = cruce.Select(s => $"línea {líneas.IndexOf(s.Line)}, vértices {s.FirstVertex}-{s.SecondVertex}");
    Console.WriteLine($"({cruce.Key.X:F2}, {cruce.Key.Y:F2}): {string.Join("; ", segmentos)}");
}

return 0;
```
