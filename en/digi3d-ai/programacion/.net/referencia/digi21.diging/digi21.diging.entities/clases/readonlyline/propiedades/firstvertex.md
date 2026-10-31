# FirstVertex
<!-- id: firstvertex -->
<!-- origen: 4204d30724471bea5027980a3453d8e0fb99c15c -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordinates of the line's first vertex.

```csharp
public Point3D FirstVertex { get; }
```

## Property value

The [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) at vertex index 0, the same as `Points[0]`.

The property does not check the vertex count: do not use it on a line without vertices.
