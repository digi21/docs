# Point3DReadOnlyCollection
<!-- id: point3dreadonlycollection -->
<!-- origen: 09d6988b328011ca5b2f76d1030b31d3572e8464 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only list of an entity's vertices.

```csharp
public class Point3DReadOnlyCollection : IReadOnlyList<Point3D>
```

Implements: `IReadOnlyList<Point3D>`.

The class has no public constructors, and no assembly member returns a `Point3DReadOnlyCollection`: the `Points` property of [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) and [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) is declared as `IReadOnlyList<Point3D>`.

## Properties

| Property | Description |
| :--- | :--- |
| `int Count { get; }` | Vertex count. |
| `Point3D this[int index] { get; }` | Vertex at position `index`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than or equal to `Count`. |

## Methods

| Method | Description |
| :--- | :--- |
| `bool Contains(Point3D vertex)` | `true` if any vertex equals `vertex` according to the `==` operator of [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md), which uses the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance. |
| `int IndexOf(Point3D item)` | Position of the first vertex equal to `item` using the same rule as `Contains`, or `-1`. |
| `int IndexOf(Point2D item)` | Position of the first vertex whose X and Y equal those of `item` according to `Precision.Epsilon`, or `-1`. Z is not compared. |
| `void CopyTo(Point3D[] array, int arrayIndex)` | Copies vertices into `array` starting at `arrayIndex`. Throws `ArgumentNullException` if `array` is `null`, `ArgumentOutOfRangeException` if `arrayIndex` is negative, and `IndexOutOfRangeException` if the vertices do not fit in `array`. |
| `IEnumerator<Point3D> GetEnumerator()` | Vertex enumerator. |
