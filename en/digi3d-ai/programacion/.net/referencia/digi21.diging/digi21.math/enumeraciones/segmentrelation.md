# SegmentRelation
<!-- id: segmentrelation -->
<!-- origen: b719ee920e3f68d041f9f9f60b051fc637ed03b8 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Relative position of the infinite lines through the endpoints of two [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) values. Returned by `Segment.AnalyzeRelation` (in space) and `Segment.AnalyzeRelationPlaneXY` (in the X, Y plane).

```csharp
public enum SegmentRelation
```

Calculation uses the infinite lines rather than the segments: two segments with a `Cutted` relation may not touch if the lines' intersection lies outside either segment.

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Crossed` | 0 | The lines are skew: nonparallel and not in the same plane. Returned only by `AnalyzeRelation`. |
| `Cutted` | 1 | The lines intersect at one point. |
| `Paralel` | 2 | The lines are parallel and distinct. |
| `Coincident` | 3 | Both lines are the same line. |

## Example

The [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) example compares two segments' relation in space and in the X, Y plane.
