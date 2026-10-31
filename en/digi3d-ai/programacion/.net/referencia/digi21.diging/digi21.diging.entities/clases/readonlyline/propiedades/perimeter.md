# Perimeter
<!-- id: perimeter -->
<!-- origen: ebf1f7b8664ef030f3e8424ef1033ccb6fe46049 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Line length in the X, Y plane.

```csharp
public double Perimeter { get; }
```

## Property value

Sum of segment lengths in X, Y, from the first vertex to the last. For an open line, the section from the last vertex to the first is not included. The property returns `0` if the line has only one vertex.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The line has no vertices. |
