# ReadOnlyText
<!-- id: readonlytext -->
<!-- origen: 86014145cbf9023c2e2145e76d36ba62ca7da8ef -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read-only text: a string, insertion coordinate, height, rotation, orientation in space and justification.

```csharp
public class ReadOnlyText : Entity, ISnapable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyText`

Derived types: [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)

Implements: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/) and, through inheritance, [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` and `IDisposable`.

The class has no public constructors. Drawing files return text they read with this type, and `IDrawingFile.Add(Text)` returns the added text with this type. To obtain modifiable text, use [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) or create a [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

Other members (codes, colors, attributes, minimum and maximum coordinates, `Dispose`…) are inherited from [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Properties

| Member | Description |
| :--- | :--- |
| [`string Txt { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/txt.md) | Text string. |
| [`Point3D Coordinate { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/coordinate.md) | Insertion coordinate. |
| [`double TextHeight { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/textheight.md) | Text height. |
| [`double Rotation { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/rotation.md) | Rotation, in degrees, counterclockwise from the X axis, around the world Z axis. |
| [`Quaternion Orientation { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md) | Orientation in space: a quaternion applied before `Rotation`, in the text's local coordinate system. `Quaternion.Identity` leaves the text in the XY plane. |
| [`TextJustification Justification { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/justification.md) | Insertion point position relative to the text. |

## Methods

| Member | Description |
| :--- | :--- |
| [`Text Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) | Returns a modifiable copy of the text, without a drawing file. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Returns `Coordinate - coordinate`: the vector from `coordinate` to the insertion point. Does not account for the string's extent. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Returns the insertion point in `nearestVertex` and 0 in `vertex`. Returns the XY plane distance between `coordinate` and the insertion point. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Same result as `NearestVertex`: `calculatedCoordinate` is the insertion point, `segment` is 0, and the return value is the XY plane distance. |
| `string ToString()` | Returns the entity type, minimum and maximum coordinates, codes, coordinate, rotation, height and justification in the Digi3D.AI interface language. If the text has an orientation other than `Quaternion.Identity`, adds the orientation. |

## Example

The [Text example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/#example) reads `Txt` and `Justification` from the `ReadOnlyText` returned by `BinDouble.Add`.
