# NodeDetector
<!-- id: digi21.diging.topology.nodedetector -->
<!-- origen: 804be74e88589c965fcecd11bb81b2c0e95cb68f -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Groups line endpoints by XY coordinate. Each group is a node: a coordinate and the line endpoints at that location.

```csharp
public static class NodeDetector
```

## Static methods

### DetectNodes

```csharp
public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(this IEnumerable<ReadOnlyLine> lines)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model, Func<ReadOnlyLine, bool> analyzeThisLine)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model, Func<Point2D, bool> insertNodeAtThisCoordinates)

public static IEnumerable<IGrouping<Point2D, VertexPointer>> DetectNodes(
    this IEnumerable<ReadOnlyLine> model,
    Func<ReadOnlyLine, bool> analyzeThisLine,
    Func<Point2D, bool> insertNodeAtThisCoordinates)
```

For each line, adds two [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) instances: one pointing to the first vertex (`Vertex` is `0`) and one to the last (`Vertex` is `Points.Count - 1`). Groups them by XY coordinate using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance; each group's key is the coordinate of the first endpoint added to it.

| Parameter | Description |
| :--- | :--- |
| `lines`, `model` | Lines to analyze. The sequence is iterated only once, when the method is called. `null` elements are skipped. |
| `analyzeThisLine` | Called for each line. If it returns `false`, the line contributes no nodes. |
| `insertNodeAtThisCoordinates` | Called with each endpoint's coordinate. If it returns `false`, that endpoint is not added. |

The result:

- Contains all endpoints, including those of a line touching no other: a node with a single `VertexPointer` is a free endpoint. To retain nodes where several lines meet, filter through `nodo.Count() > 1`.
- Contains a closed line's first and last vertices in the same node, with two `VertexPointer` instances for the same line.
- Is sorted by X, then by Y for equal X. Can be iterated several times.
- Does not exclude deleted lines: filter them before calling the method or through `analyzeThisLine`.

Each `VertexPointer`'s `Line` is the same instance as in the input sequence. The method does not check that lines have vertices: remove lines without vertices before calling it, as the example does.

### FindAll

```csharp
public static IEnumerable<Point2D> FindAll(
    this IEnumerable<IGrouping<Point2D, VertexPointer>> nodes, Point2D point, double distance)

public static IEnumerable<Point2D> FindAll(
    this IEnumerable<IGrouping<Point2D, VertexPointer>> nodes, Point2D point, double distance,
    Func<IGrouping<Point2D, VertexPointer>, bool> includeCoordinateOfThisNode)
```

Returns coordinates of nodes inside the square of side `2 · distance` centered on `point`: nodes whose X and Y differ from those of `point` by `distance` or less. This is not a circle: a node at a square corner is `distance · √2` from `point`.

| Parameter | Description |
| :--- | :--- |
| `nodes` | Nodes, usually the result of `DetectNodes`. |
| `point` | Search center. |
| `distance` | Half the search square's side length. |
| `includeCoordinateOfThisNode` | Called for each node satisfying the X condition. If it returns `false`, the node is excluded. |

The result is returned in `nodes` order, in an already calculated list. All of `nodes` is iterated on every call.

## Example

This program detects free endpoints of non-deleted lines in a `.bin` file, that is, nodes reached by only one endpoint, and searches around each for nodes within 0.5 m in X and Y:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ExtremosLibres <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var líneas = archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted && línea.Points.Count > 0).ToList();

var nodos = líneas.DetectNodes().ToList();

foreach (var libre in nodos.Where(nodo => nodo.Count() == 1))
{
    var cercanos = nodos
        .FindAll(libre.Key, 0.5, nodo => nodo.Key != libre.Key)
        .ToList();

    Console.WriteLine($"Extremo libre en ({libre.Key.X:F2}, {libre.Key.Y:F2}): {cercanos.Count} nodos cerca");
}

return 0;
```
