# Holes
<!-- id: holes -->
<!-- origen: 02d6af650087ccb77cdaa1b1cda66865faaa8c50 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write polygon holes.

```csharp
public new IList<Line> Holes { get; }
```

## Property value

A collection, always the same instance for each polygon, working directly on the polygon's holes. Each hole is a closed [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/): the last vertex repeats the first.

| Member | Description |
| :--- | :--- |
| `Add(Line item)` | Adds `item` as the last hole. The line becomes owned by the polygon: do not add it to another polygon, complex or drawing file. Throws `ArgumentNullException` if `item` is `null`. |
| `Insert(int index, Line item)` | Inserts `item` at position `index`. With `index` equal to `Count`, appends `item`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than `Count`, and `ArgumentNullException` if `item` is `null`. |
| `this[int index]` | `get`: hole at position `index`. `set`: replaces the hole with another line, which becomes owned by the polygon. Throws `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`, and `ArgumentNullException` if the assigned line is `null`. |
| `Remove(Line item)` | Removes the hole corresponding to the specified line from the collection (the same native entity instance). `Remove` returns `false` if it cannot find the line specified by `item` or if `item` is `null`. |
| `RemoveAt(int index)` | Removes the hole at position `index`. Throws `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`. |
| `Clear()` | Removes all holes. |
| `IndexOf(Line item)`, `Contains(Line item)` | Find the same line, rather than a line with the same vertices. With `item` equal to `null`, `IndexOf` returns `-1` and `Contains` returns `false`. |
| `CopyTo(Line[] array, int arrayIndex)` | Copies the holes. Throws `ArgumentNullException` if `array` is `null` and `ArgumentOutOfRangeException` if `arrayIndex` is negative. |
| `Count` | Hole count. |
| `IsReadOnly` | `true` if the polygon is read-only. |

Methods modifying the collection throw `InvalidOperationException` if the polygon is read-only.

This property hides [ReadOnlyPolygon.Holes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md), of type `IReadOnlyList<ReadOnlyLine>`.

## Example

```csharp
var hueco = new Line(new Code("080100"));
hueco.Points.Add(new[]
{
    new Point3D(40, 40, 0),
    new Point3D(40, 60, 0),
    new Point3D(60, 60, 0),
    new Point3D(40, 40, 0),
});
polígono.Holes.Add(hueco);
```
