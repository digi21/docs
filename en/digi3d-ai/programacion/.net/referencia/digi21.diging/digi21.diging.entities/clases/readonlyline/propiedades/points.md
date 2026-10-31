# Points
<!-- id: points-3 -->
<!-- origen: e43144c4708e51df536b51350262d555add970e1 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Line vertices.

```csharp
public IReadOnlyList<Point3D> Points { get; }
```

## Property value

A read-only collection containing vertex coordinates, in order.

The first read of the property copies vertices, and subsequent reads return the same copy. Vertices of a line read from a file do not change. In a [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), `Line.Points` hides this property and returns a read/write collection that always reflects current vertices; reading `ReadOnlyLine.Points` from a `Line` (for example, through a variable of type `ReadOnlyLine`) returns a copy that does not reflect later vertex changes.
