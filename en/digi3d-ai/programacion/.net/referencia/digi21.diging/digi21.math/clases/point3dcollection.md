# Point3DCollection
<!-- id: point3dcollection -->
<!-- origen: 6ad713ff1bd5e8dcedeac56b10b265ef2e656a7e -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

The `Points` property of [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) and [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) returns a modifiable list of the entity's vertices.

```csharp
public class Point3DCollection : IList<Point3D>, IReadOnlyList<Point3D>
```

Implements: `IList<Point3D>` and `IReadOnlyList<Point3D>`.

The class has no public constructors. The collection does not copy vertices: it reads and modifies the entity's vertices directly. Each change updates the entity's minimum and maximum coordinates (`Xmin`, `Xmax`, `Ymin`, …).

If the entity belongs to a drawing file (its `Owner` property is not `null`), methods modifying the collection throw `InvalidOperationException`. `IsReadOnly` also returns `false` in this case.

`Contains`, `IndexOf` and `Remove` compare vertices using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance, like the `==` operator of [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md).

## Properties

| Property | Description |
| :--- | :--- |
| `int Count { get; }` | Vertex count. |
| `bool IsReadOnly { get; }` | Always `false`. |
| `Point3D this[int index] { get; set; }` | Vertex at position `index`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than or equal to `Count`. The `set` accessor throws `InvalidOperationException` if the entity belongs to a drawing file. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Add(Point3D item)` | Appends the vertex. |
| `void Add(IEnumerable<Point3D> points)` | Calls `Add(Point3D)` for each point in enumeration order. Throws `NullReferenceException` if `points` is `null`. The `Digi21.DigiNG` NuGet package does not declare this overload: it can only be called when compiling with the assembly installed with Digi3D.AI. |
| `void Insert(int index, Point3D item)` | Inserts the vertex at position `index`. With `index` equal to `Count`, appends the vertex. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than `Count`. |
| `bool Remove(Point3D item)` | Removes the first vertex equal to `item`. Returns `false` if there is none. |
| `void RemoveAt(int index)` | Removes the vertex at position `index`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than or equal to `Count`. |
| `void Clear()` | Removes all vertices. |
| `bool Contains(Point3D vertex)` | `true` if any vertex equals `vertex`. |
| `int IndexOf(Point3D item)` | Position of the first vertex equal to `item`, or `-1`. |
| `void CopyTo(Point3D[] array, int arrayIndex)` | Copies vertices into `array` starting at `arrayIndex`. Throws `ArgumentNullException` if `array` is `null`, `ArgumentOutOfRangeException` if `arrayIndex` is negative, and `IndexOutOfRangeException` if the vertices do not fit in `array`. |
| `IEnumerator<Point3D> GetEnumerator()` | Vertex enumerator. `MoveNext` throws `InvalidOperationException` if the vertex count changes during iteration. |

`Add`, `Insert`, `Remove`, `RemoveAt`, `Clear` and the indexer's `set` accessor throw `InvalidOperationException` if the entity belongs to a drawing file. To modify vertices of an entity read from a file, modify the copy returned by `Clone()`.

## Example

This program creates a line and modifies its vertices:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var línea = new Line(new Code("020101"));
Point3DCollection vértices = línea.Points;

vértices.Add(new Point3D(0.0, 0.0, 0.0));
vértices.Add(new Point3D(10.0, 0.0, 0.0));
vértices.Add(new Point3D(10.0, 10.0, 0.0));

// Insert the vertex at position 1; an index of Count would append it.
vértices.Insert(1, new Point3D(5.0, -1.0, 0.0));

// Contains, IndexOf and Remove compare using Precision.Epsilon.
Precision.Epsilon = 0.001;
Console.WriteLine(vértices.IndexOf(new Point3D(10.0, 0.0004, 0.0))); // 2

vértices[0] = new Point3D(0.0, 0.0, 5.0);
vértices.RemoveAt(vértices.Count - 1);

foreach (var vértice in vértices)
    Console.WriteLine(vértice);

// The line's window is updated with each vertex change.
Console.WriteLine($"{línea.Xmin} {línea.Xmax} {línea.Zmax}"); // 0 10 5
```
