# Text
<!-- id: text -->
<!-- origen: 0857258202283ba3fe329533c9ac9d3b428622f8 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write text: a string, insertion coordinate, height, rotation, orientation in space and justification.

```csharp
public class Text : ReadOnlyText, IDesplazable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/) → `Text`

Implements: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) and, through inheritance, [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` and `IDisposable`.

A `Text` created using its constructors belongs to no drawing file (`Owner` is `null`) and can be modified. When added to a drawing file using `IDrawingFile.Add`, `Owner` becomes that file and the entity becomes read-only: `set` accessors and `Offset` methods throw `InvalidOperationException`. To modify stored text, modify the copy returned by [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/metodos/clone.md).

A new `Text` has an empty string, coordinate (0, 0, 0), height 0, rotation 0, orientation `Quaternion.Identity` and justification `SouthWest`, and its minimum and maximum coordinates ([IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)) have not been calculated: `Valid` is `false`, `Xmin` is `null`, and `Width`, `Center`, `Color`, `Weight` and `FillColor` throw `InvalidOperationException`. Assigning `Coordinate` moves the text and recalculates minimum and maximum coordinates. `Offset` methods move the text and also recalculate them, along with those of each entity containing the text, such as the complex it belongs to.

`Rotation` is in degrees, like [Point.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md). In earlier versions it was in hundredths of a degree: read [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md).

Other members (codes, colors, attributes, `Clone`, `Dispose`…) are inherited from [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) and [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/).

## Constructors

| Member | Description |
| :--- | :--- |
| [`Text(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/constructores.md) | Creates text with one code. |
| [`Text(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/constructores.md) | Creates text with multiple codes, in enumeration order. |

## Properties

| Member | Description |
| :--- | :--- |
| [`string Txt { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/txt.md) | Text string. |
| [`Point3D Coordinate { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/coordinate.md) | Insertion coordinate. |
| [`double TextHeight { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/textheight.md) | Text height. |
| [`double Rotation { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md) | Rotation, in degrees, counterclockwise from the X axis, around the world Z axis. |
| [`Quaternion Orientation { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md) | Orientation in space: a quaternion applied before `Rotation`, in the text's local coordinate system. The quaternion is normalized when the property is assigned. |
| [`TextJustification Justification { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md) | Insertion point position relative to the text. |

## Methods

| Member | Description |
| :--- | :--- |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset.X` and `offset.Y` to the insertion coordinate. Z is unchanged. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset` to the insertion coordinate. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x` and `y` to the insertion coordinate. Z is unchanged. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x`, `y` and `z` to the insertion coordinate. |

All four `Offset` methods throw `InvalidOperationException` if the text is read-only (`ReadOnly` is `true`).

## Example

This program writes one text entity to a `.bind` file for each [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md) value, using the value's name as its string:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Textos <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

// One label per TextJustification value, all with the same insertion X coordinate.
var y = 4480000.0;
foreach (var justificación in Enum.GetValues<TextJustification>())
{
    var rótulo = new Text(new Code("080101"))
    {
        Txt = justificación.ToString(),
        Coordinate = new Point3D(450000.0, y, 0.0),
        TextHeight = 2.5,
        Rotation = 0.0,
        Justification = justificación,
    };

    ReadOnlyText guardado = archivo.Add(rótulo);
    Console.WriteLine($"{guardado.Txt}: {(int)guardado.Justification}");
    y += 5.0;
}

return 0;
```
