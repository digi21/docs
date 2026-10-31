# Points
<!-- id: points-4 -->
<!-- origen: c93ac5dcf5b0dd06a532a13157d6ac8785cb84be -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Vertices of the polygon's outer boundary.

```csharp
public IReadOnlyList<Point3D> Points { get; }
```

## Property value

A read-only collection containing outer boundary vertex coordinates, in order. The last vertex repeats the first. Hole vertices are in [Holes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md).

The first read copies vertices, and subsequent reads return the same copy. In a [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/), `Polygon.Points` hides this property and returns a read/write collection that always reflects current vertices; reading `ReadOnlyPolygon.Points` from a `Polygon` (for example, through a variable of type `ReadOnlyPolygon`) returns a copy that does not reflect later vertex changes.
