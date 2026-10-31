# TopologyAnalyzer
<!-- id: digi21.diging.topology.topologyanalyzer -->
<!-- origen: 582076fae44866b302a04bc9b2b990a015ab875a -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Forms polygons enclosed by a set of lines (the topology) and assigns a centroid to each polygon, that is, text located inside it.

```csharp
public static class TopologyAnalyzer
```

## How polygons are formed

`AnalyzeTopology` works with arcs and nodes. An arc is a line; a node is an XY coordinate where an arc ends. The algorithm traverses arcs around each node, sorted by azimuth, and forms closed rings:

- A ring with positive area is a polygon: returned as a [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md).
- A ring with negative area is an island. Islands are not returned as polygons. If `analyzePolygonRelationship` is `true`, each island inside a polygon is added to its `Holes`; an island inside another island of the same polygon is not added.
- A ring passing through the same vertex twice encloses no area and is not returned. It is reported through `openPolygon`.

Only lines form arcs, and only line endpoints (first and last vertices) are nodes: two lines crossing without a common endpoint are not split at the crossing. Use [IntersectionDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md) to find those intersections.

Entities considered:

| Entity | Use |
| :--- | :--- |
| `ReadOnlyLine` with 2 or more vertices | Arc. |
| `ReadOnlyLine` with fewer than 2 vertices, `ReadOnlyPoint` | Reported through `entityWithOnlyOnePoint` and the method throws an exception. |
| `ReadOnlyText` | Stored as a centroid, but `AnalyzeTopology` does not assign it to any polygon: call `AnalyzeCentroids`. |
| `ReadOnlyPolygon`, `ReadOnlyComplex` | Ignored. |

Deleted (`Deleted`) entities, hidden entities and those without any code turned on in the drawing window are also ignored.

## Static methods

### AnalyzeTopology

```csharp
public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, bool analyzePolygonRelationship)

public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, bool analyzePolygonRelationship, Action<int> progressChanged)

public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities,
    bool analyzePolygonRelationship,
    Action<int> progressChanged,
    Action<ReadOnlyLine> lineWithDoublePoints,
    Action<Entity> entityWithOnlyOnePoint,
    Action<IEnumerable<ReadOnlyLine>> openPolygon)
```

Forms the polygons of `entities` and returns them in a list. Parameters absent from shorter overloads are `null`, and a `null` delegate is not called.

| Parameter | Description |
| :--- | :--- |
| `entities` | Topology entities. The sequence is iterated only once, at the start of analysis. |
| `analyzePolygonRelationship` | `true` to find islands inside each polygon and add them to its `Holes`. With `false`, `Holes` remains empty. |
| `progressChanged` | Receives progress percentage, from 0 to 99. Called while forming rings and again, starting from 0, while finding islands. |
| `lineWithDoublePoints` | Receives each line whose first two or last two vertices have the same X and Y. |
| `entityWithOnlyOnePoint` | Receives each point and each line with fewer than 2 vertices. |
| `openPolygon` | Receives the lines of each ring passing through the same vertex twice. A line traversed by the ring in both directions appears twice. |

The `lineWithDoublePoints` and `entityWithOnlyOnePoint` delegates are called with all problematic entities, and the method then throws the exception:

| Exception | When |
| :--- | :--- |
| `Exception` with message "Detected lines with double points" | A line's first two or last two vertices are equal in XY. "Detected lines with double points" takes precedence over "Entities detected with a single point". |
| `Exception` with message "Entities detected with a single point" | `entities` contains a point or a line with fewer than 2 vertices. |
| `Exception` with message "There is not enough data" | `entities` contains no valid line. |

Messages are displayed in Digi3D.AI's language. Duplicate vertices in the middle of a line do not cause an error.

### AnalyzeCentroids

```csharp
public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<int> progressChanged)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<ClosedLoopWithHoles, IEnumerable<ReadOnlyText>> duplicatedCentroids)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<ClosedLoopWithHoles, IEnumerable<ReadOnlyText>> duplicatedCentroids,
    Action<int> progressChanged)
```

Assigns each polygon's `Centroid` property in `polygons` the first text in `centroids`, in increasing Y order, whose insertion point is inside the polygon or on its boundary. A point inside a polygon's hole is outside. If the polygon contains no text, `Centroid` remains unchanged.

| Parameter | Description |
| :--- | :--- |
| `polygons` | Polygons returned by `AnalyzeTopology`. |
| `centroids` | Text entities that can serve as centroids. |
| `duplicatedCentroids` | Receives each polygon containing more than one text entity, along with all those text entities (including the assigned one). |
| `progressChanged` | Receives progress percentage, from 0 to 99: called before analyzing each polygon when the percentage changes. |

Polygons are analyzed in `polygons` order. Text assigned as one polygon's centroid is not considered for subsequent polygons, either for assignment or for `duplicatedCentroids`. Text contained by a polygon but not assigned to it remains available to subsequent polygons.

Throws `NullReferenceException` if an element of `polygons` has `Polygon` set to `null`, for example a `ClosedLoopWithHoles` created through its constructor.

## Example

This program builds the topology of a `.bin` file and shows each polygon's area, hole count and centroid text:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Parcelas <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

// The file can only be iterated once: retain its entities.
var entidades = archivo.Where(entidad => !entidad.Deleted).ToList();

try
{
    var polígonos = entidades
        .AnalyzeTopology(
            analyzePolygonRelationship: true,
            progressChanged: null,
            lineWithDoublePoints: línea => Console.WriteLine($"Puntos dobles: {línea}"),
            entityWithOnlyOnePoint: entidad => Console.WriteLine($"Un solo punto: {entidad}"),
            openPolygon: líneas => Console.WriteLine($"Anillo sin área de {líneas.Count()} líneas"))
        .ToList();

    polígonos.AnalyzeCentroids(
        entidades.OfType<ReadOnlyText>(),
        (polígono, textos) => Console.WriteLine($"{textos.Count()} centroides en un polígono"));

    foreach (var polígono in polígonos)
    {
        var centroide = polígono.Centroid?.Txt ?? "(sin centroide)";
        Console.WriteLine($"{centroide}: {polígono.Polygon.Area:F2} m², {polígono.Holes.Count} huecos");
    }
}
catch (Exception ex)
{
    Console.WriteLine(ex.Message);
    return 1;
}

return 0;
```
