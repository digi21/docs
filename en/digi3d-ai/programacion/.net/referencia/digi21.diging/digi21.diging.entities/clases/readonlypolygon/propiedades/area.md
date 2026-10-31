# Area
<!-- id: area-3 -->
<!-- origen: 8f53e94dbbb823a9417ce647a4db44494153d6e9 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Signed polygon area in the X, Y plane.

```csharp
public double Area { get; }
```

## Property value

Signed outer boundary area minus each hole's signed area. Each area is calculated as [ReadOnlyLine.Area](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/area.md): positive for clockwise vertices and negative for counterclockwise vertices.

If holes have the same direction as the outer boundary, the result is the enclosed area's surface area (with the boundary's sign). If a hole has the opposite direction, its area is added rather than subtracted. To obtain surface area independently of vertex direction, subtract each hole's absolute area from the outer boundary's absolute area, as in the example.

The property does not check the vertex count: do not use it on a polygon without vertices.

## Example

```csharp
// Area + sum of hole areas = signed outer boundary area.
var áreaExterior = polígono.Area + polígono.Holes.Sum(h => h.Area);
var superficie = Math.Abs(áreaExterior) - polígono.Holes.Sum(h => Math.Abs(h.Area));
```
