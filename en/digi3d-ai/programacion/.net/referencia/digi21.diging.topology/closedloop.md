# ClosedLoop
<!-- id: digi21.diging.topology.closedloop -->
<!-- origen: 4a985ba7981f0ab0948b51fe91c79758822fbebd -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Closed ring formed by one or more lines in a topology. [TopologyAnalyzer.AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) returns polygons as [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md), which inherits from this class, and each polygon's holes as `ClosedLoop`.

```csharp
public class ClosedLoop
```

## Constructors

```csharp
public ClosedLoop()
```

Creates an empty ring: `Polygon` and `Centroid` are `null`, and `Entities` is an empty list. `TopologyAnalyzer.AnalyzeTopology` creates rings containing data.

## Properties

| Property | Description |
| :--- | :--- |
| `Polygon Polygon` | New [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) with the ring's vertices. Has a single code with an empty name (`""`) and belongs to no drawing file. In a `ClosedLoopWithHoles`, the polygon also includes holes. |
| `ReadOnlyText Centroid` | Text assigned as a centroid by `TopologyAnalyzer.AnalyzeCentroids`, or `null`. Is `null` after `AnalyzeTopology`. |
| `List<Tuple<ReadOnlyLine, bool>> Entities` | Lines (arcs) forming the ring, in traversal order. `Item1` is the line, the same instance passed to `AnalyzeTopology`. `Item2` is `true` if the ring traverses the line from its first vertex to its last, and `false` if traversed in reverse. |

## Example

This program builds the topology of a `.bin` file and shows the lines forming each polygon and their traversal directions:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Arcos <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

foreach (var polígono in archivo.AnalyzeTopology(analyzePolygonRelationship: false))
{
    Console.WriteLine($"Polígono de {polígono.Polygon.Area:F2} m²:");
    foreach (var (línea, directa) in polígono.Entities)
    {
        var códigos = string.Join(", ", línea.Codes.Select(código => código.Name));
        Console.WriteLine($"  {códigos}: {línea.Points.Count} vértices, {(directa ? "en su sentido" : "al revés")}");
    }
}

return 0;
```
