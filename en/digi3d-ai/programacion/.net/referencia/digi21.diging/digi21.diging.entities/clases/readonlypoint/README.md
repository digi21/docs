# ReadOnlyPoint
<!-- id: readonlypoint -->
<!-- origen: 2cffe9121458c3a55d9caf37dfb64dda8696dbfd -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only point: an insertion coordinate and a rotation.

```csharp
public class ReadOnlyPoint : Entity, ISnapable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyPoint`

Derived types: [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)

Implements: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) and, through inheritance, [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` and `IDisposable`.

The class has no public constructors. Drawing files return points they read with this type, and `IDrawingFile.Add(Point)` returns the added point with this type. To obtain a modifiable point, use [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md) or create a [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

Other members (codes, colors, attributes, minimum and maximum coordinates, `Dispose`…) are inherited from [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Properties

| Member | Description |
| :--- | :--- |
| [`Point3D Coordinate { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/coordinate.md) | Insertion coordinate. |
| [`double Rotation { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/rotation.md) | Symbol rotation, in degrees, counterclockwise from the X axis. |

## Methods

| Member | Description |
| :--- | :--- |
| [`Point Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md) | Returns a modifiable copy of the point, without a drawing file. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Returns `Coordinate - coordinate`: the vector from `coordinate` to the point, including the Z difference. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Returns the point's coordinate in `nearestVertex` and 0 in `vertex`. Returns the XY plane distance between `coordinate` and the point. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Same result as `NearestVertex`: `calculatedCoordinate` is the point's coordinate, `segment` is 0, and the return value is the XY plane distance. |
| `string ToString()` | Returns the entity type, minimum and maximum coordinates, codes, coordinate and rotation in the Digi3D.AI interface language. |

## Example

The [Point example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/#example) reads the properties of the `ReadOnlyPoint` returned by `BinDouble.Add` and modifies a copy obtained with `Clone`. The [ISnapable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/#example) uses `NearestVertex`, `NearestSegment` and `Distance` with a point.
