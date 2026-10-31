# Constructors
<!-- id: constructores-9 -->
<!-- origen: f94e8514bd5f20922173d6c9f589b1c904cb5163 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/) to a line segment joining two vertices.

```csharp
public SegmentPointer(ReadOnlyLine line, int firstVertex, int secondVertex)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `line` | [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) to which the segment belongs. Returned in `Line`. |
| `firstVertex` | First vertex's index in `line.Points`. Returned in `FirstVertex`. |
| `secondVertex` | Second vertex's index in `line.Points`. Returned in `SecondVertex`. |

The constructor does not check parameters.

## Example

The [SegmentPointer example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/#example) creates a `SegmentPointer` for each segment of a line.
