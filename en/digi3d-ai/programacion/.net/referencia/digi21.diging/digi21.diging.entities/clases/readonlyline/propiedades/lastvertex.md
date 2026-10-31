# LastVertex
<!-- id: lastvertex -->
<!-- origen: db8085524b44b1c0385f73b8d8d5a2865b0a3114 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordinates of the line's last vertex.

```csharp
public Point3D LastVertex { get; }
```

## Property value

The [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) at vertex index `Points.Count - 1`.

The property does not check the vertex count: do not use it on a line without vertices.
