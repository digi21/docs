# LastSegment
<!-- id: lastsegment -->
<!-- origen: 58740f4514a7c36b8a884482e1f4dd03f5b8639b -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Last segment of the line.

```csharp
public Segment LastSegment { get; }
```

## Property value

A [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) with `Origin` at the penultimate vertex and `Destination` at the last.

The property does not check the vertex count: do not use it on a line with fewer than 2 vertices (`Points.Count < 2`).
