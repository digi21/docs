# Points
<!-- id: points-2 -->
<!-- origen: 0ba683bc0792adbd4ab623db1a9b662bd5cf88b5 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write vertices of the polygon's outer boundary.

```csharp
public new Point3DCollection Points { get; }
```

## Property value

A [Point3DCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3dcollection.md), always the same instance for each polygon. The collection works directly on the outer boundary's vertices: every change applies to the polygon and updates its minimum and maximum coordinates. The last vertex must repeat the first; the collection does not add it.

If the polygon is read-only, methods modifying the collection throw `InvalidOperationException`.

This property hides [ReadOnlyPolygon.Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md), which returns a copy of the vertices made on the first read.

## Example

```csharp
var polígono = new Polygon(new Code("080100"));
polígono.Points.Add(new[]
{
    new Point3D(0, 0, 0),
    new Point3D(0, 100, 0),
    new Point3D(100, 100, 0),
    new Point3D(0, 0, 0),
});
```
