# FirstSegment
<!-- id: firstsegment -->
<!-- origen: f113aeefed0a3018651a808597ec36890ead0afa -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

First segment of the line.

```csharp
public Segment FirstSegment { get; }
```

## Property value

A [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) with `Origin` at the first vertex and `Destination` at the second.

The property does not check the vertex count: do not use it on a line with fewer than 2 vertices (`Points.Count < 2`).
