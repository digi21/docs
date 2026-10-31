# Points
<!-- id: points -->
<!-- origen: ceaa28717ae560199580b34419f057fa56d3f397 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write line vertices.

```csharp
public new Point3DCollection Points { get; }
```

## Property value

A [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md), always the same instance for each line. The collection works directly on the line's vertices: each change applies to the line and updates its minimum and maximum coordinates.

If the line is read-only (belongs to a drawing file), methods modifying the collection (`Add`, `Insert`, `Remove`, `RemoveAt`, `Clear` and the indexer's `set` accessor) throw `InvalidOperationException`.

This property hides [ReadOnlyLine.Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/points.md). A variable of type `ReadOnlyLine` reads the base class property, which returns a copy of the vertices made on the first read.

## Example

```csharp
var línea = new Line(new Code("020400"));
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new[] { new Point3D(10, 0, 100), new Point3D(20, 5, 101) });
línea.Points[0] = new Point3D(0, 1, 100);
línea.Points.RemoveAt(2);
```
