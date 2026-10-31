# Perimeter3D
<!-- id: perimeter3d -->
<!-- origen: f122a702cc9f2dcc5f6f61c8b2b7bef469d57155 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Line length in space.

```csharp
public double Perimeter3D { get; }
```

## Property value

Sum of segment lengths in X, Y, Z, from the first vertex to the last. For an open line, the section from the last vertex to the first is not included. The property returns `0` if the line has only one vertex.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The line has no vertices. |
