# Orientation
<!-- id: orientation-2 -->
<!-- origen: 4cfd271f08f3c331a0f1de05673326ddd6eecbce -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s orientation in space.

```csharp
public new Quaternion Orientation { get; set; }
```

## Property value

A [Quaternion](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md) applied to the text before [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md), in the text's local coordinate system. In a new `Text`, it is [Quaternion.Identity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/quaternion.md), (1, 0, 0, 0), and the text lies in the XY plane. Reading returns the same value as [ReadOnlyText.Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md). The `ReadOnlyText.Orientation` page explains the text's local coordinate system, composition with `Rotation` and the most common orientations.

When assigning the property:

- The text stores the normalized quaternion: all four components divided by the norm √(W² + X² + Y² + Z²). Thus, (1, 1, 0, 0) is equivalent to (cos 45°, sin 45°, 0, 0), the 90° rotation around the X axis. If the norm differs from 1 by 10⁻¹² or less, the text stores the quaternion unchanged.
- If the norm is 0, infinite or `NaN`, the text stores `Quaternion.Identity`. This applies to the structure's default value, `default(Quaternion)`, with all four components set to 0, and to a quaternion with any infinite or `NaN` component.
- The value of `Rotation` does not change. Assigning `Rotation` does not change `Orientation` either.

`Quaternion` is a value type, and the property returns a copy. `texto.Orientation.X = 1.0` does not compile (error CS1612): to change a component, assign the entire quaternion to the property.

## Plan direction belongs in Rotation

Assign the baseline's plan direction to `Rotation` and use `Orientation` only to tilt the text out of the XY plane, without rotation around the Z axis. For text on a facade with its baseline at 30° in plan, set `Rotation = 30.0` and `Orientation = new Quaternion(1.0, 1.0, 0.0, 0.0)`, rather than `Rotation = 0.0` with a quaternion including the 30°. Digi3D.AI commands and the DWG/DXF, DGN and Geomedia importers always store text this way.

Both forms draw the text identically, but the text retains the assigned quaternion and does not transfer its Z-axis rotation to `Rotation`. With a quaternion that rotates around the Z axis:

- `Rotation` is not the text's plan direction. Setting `Rotation = a` places the baseline at `a` degrees plus the plan angle that the quaternion alone gives the baseline.
- Formats storing only the rotation (BIN, VEC, GeoJSON and PDF) write the text with the direction of `Rotation`. See [Text orientation in drawing files](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md#text-orientation-in-drawing-files).
- Text in the XY plane with a quaternion that only rotates around the Z axis counts as oriented. The BIND format stores it in a `Digi21.DigiNG.Text2` record, and Digi3D versions predating that record do not load the text.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |

## Example

This excerpt creates text in a vertical plane, with the baseline at 30° to the X axis in plan:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var fachada = new Text(new Code("080101"))
{
    Txt = "Fachada",
    Coordinate = new Point3D(450000.0, 4480000.0, 12.0),
    TextHeight = 2.5,
    Rotation = 30.0,
    // Normalized (1, 1, 0, 0) is (cos 45°, sin 45°, 0, 0): the 90° rotation around the X axis.
    Orientation = new Quaternion(1.0, 1.0, 0.0, 0.0),
};

Console.WriteLine(fachada.Orientation);   // (0.7071067811865475, 0.7071067811865475, 0, 0)
```
