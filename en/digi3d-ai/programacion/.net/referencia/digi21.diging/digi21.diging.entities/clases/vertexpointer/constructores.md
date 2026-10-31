# Constructors
<!-- id: constructores-11 -->
<!-- origen: 344d87bfb56d0c7214206628e91b2ff8a841dfa6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) to a line vertex.

```csharp
public VertexPointer(ReadOnlyLine line, int vertex)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `line` | [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) to which the vertex belongs. Returned in `Line`. |
| `vertex` | Vertex index in `line.Points`. Returned in `Vertex`. |

The constructor does not check parameters.

## Example

The [SegmentPointer example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#example) creates a `VertexPointer` for each vertex of a line.
