# VertexPointer
<!-- id: vertexpointer -->
<!-- origen: 65ce3f8b179a448450c5889d9f61c737da9c3cd5 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identifies a vertex of a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) by its line and vertex index.

```csharp
public struct VertexPointer
```

Inheritance: `Object` → `ValueType` → `VertexPointer`

The structure only stores the two values received by its constructor: it does not check whether `line` is non-`null` or the index is within `line.Points`, and it is not updated when the line changes. `default(VertexPointer)` has `Line` set to `null` and `Vertex` set to 0.

The `DetectNodes` method of the `NodeDetector` class in the [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/) package groups by coordinate the `VertexPointer` values of vertices forming nodes.

## Constructors

| Member | Description |
| :--- | :--- |
| [`VertexPointer(ReadOnlyLine line, int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/constructores.md) | Creates the pointer to vertex `vertex` of `line`. |

## Properties

| Member | Description |
| :--- | :--- |
| [`ReadOnlyLine Line { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md) | Line to which the vertex belongs. |
| [`int Vertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/vertex.md) | Vertex index in `Line.Points`. |

## Example

The [SegmentPointer example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#example) creates a `VertexPointer` for each vertex of a line stored in a `.bind` file.
