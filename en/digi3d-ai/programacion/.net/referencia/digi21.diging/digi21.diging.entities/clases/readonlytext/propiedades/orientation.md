# Orientation
<!-- id: orientation -->
<!-- origen: 91a943e9e35fd66aec41a7052dc42500e75df7ea -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets the [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/)'s orientation in space.

```csharp
public Quaternion Orientation { get; }
```

## Property value

A [Quaternion](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) applied to the text before [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/rotation.md), in the text's local coordinate system. In this system, the X axis follows the baseline (the line supporting the characters), the Y axis points toward the top of the characters and the Z axis points toward the reader.

The complete text rotation is Rz(`Rotation`) · `Orientation`, where Rz(`Rotation`) is a rotation of `Rotation` degrees around the world Z axis. `Orientation` is applied first, in the text's local coordinate system, followed by Rz(`Rotation`) applied to the result of `Orientation`.

| `Orientation` | Text position |
| :--- | :--- |
| [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md), (1, 0, 0, 0) | XY plane. The complete rotation is only the `Rotation` rotation. |
| (cos 45°, sin 45°, 0, 0) | Vertical plane, with a horizontal baseline: the 90° rotation around the X axis. With `Rotation` = 0, the baseline follows the world X axis, the top of the characters points toward positive Z and the readable face of the text faces negative Y. With another value of `Rotation`, the baseline forms that angle with the X axis in plan. |

Digi3D.AI commands and the DWG/DXF, DGN and Geomedia importers store the baseline's plan direction in `Rotation`, while `Orientation` only tilts the text out of the XY plane. Text created from Python or .NET, or read from a BIND or Digi ASCII file written by another program, may have an orientation with rotation around the Z axis, in which case `Rotation` is not the text's plan direction. [Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md#plan-direction-belongs-in-rotation) explains the consequences.

The text normalizes the orientation when assigned, so the returned quaternion has norm 1, within a tolerance of 10⁻¹². The quaternions `q` and `-q` represent the same rotation, and the property returns the quaternion with the sign used when assigned.

With [CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md) enabled, the TEXT, 1TEXT, EDITABLE\_TEXT, TEXT\_R and EDITABLE\_TEXT\_R commands assign an orientation to the text they insert.

The property returns a copy: `Quaternion` is a value type. [ReadOnlyText.Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md) returns a `Text` with the same orientation as the original.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) hides this property with a version that can also be assigned: [Text.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md).
