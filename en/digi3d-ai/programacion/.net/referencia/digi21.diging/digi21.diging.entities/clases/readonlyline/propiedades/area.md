# Area
<!-- id: area-2 -->
<!-- origen: 36333090be96e3101705dcdb45dcc7d123abe694 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Signed area enclosed by the vertices, in the X, Y plane.

```csharp
public double Area { get; }
```

## Property value

Area calculated using the shoelace formula on the vertices, closing the area from the last vertex to the first even if the line is not closed. Its sign depends on vertex direction:

- positive for clockwise vertices;
- negative for counterclockwise vertices.

To obtain the unsigned area, use `Math.Abs(línea.Area)`. If the line's segments intersect one another, the result is not the enclosed area's surface area.

The property does not check the vertex count: do not use it on a line without vertices.
