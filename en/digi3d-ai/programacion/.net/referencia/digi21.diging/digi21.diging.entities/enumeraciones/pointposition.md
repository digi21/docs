# PointPosition
<!-- id: pointposition -->
<!-- origen: c6ceedb1c33c5b15ded5819d126ba57d0f802c9d -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordinate's position relative to a closed entity, in the XY plane. Returned by [ICloseable.AnalyzePointPosition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md).

```csharp
public enum PointPosition
```

## Values

| Value | Number | Meaning |
| :--- | ---: | :--- |
| `Exterior` | 0 | The coordinate is outside the enclosed area. In a polygon, also when inside one of its holes. |
| `Interior` | 1 | The coordinate is inside the enclosed area and, in a polygon, outside all its holes. |
| `Tangent` | 2 | The coordinate lies on the enclosed area's boundary or, in a polygon, a hole's boundary. |

## Example

The [ICloseable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/#example) queries three coordinates' positions relative to a polygon with a hole: one inside, one inside the hole and one on the boundary.
