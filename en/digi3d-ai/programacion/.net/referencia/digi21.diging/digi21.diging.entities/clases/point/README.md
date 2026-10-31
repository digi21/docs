# Point
<!-- id: point -->
<!-- origen: 2a13838436be32db9d5ec7fe25305a24056a6914 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write point: an insertion coordinate and a rotation.

```csharp
public class Point : ReadOnlyPoint, IDesplazable
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/) → `Point`

Implements: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) and, through inheritance, [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/), `ICloneable` and `IDisposable`.

A `Point` created using its constructors belongs to no drawing file (`Owner` is `null`) and can be modified. When added to a drawing file using `IDrawingFile.Add`, `Owner` becomes that file and the entity becomes read-only: `set` accessors and `Offset` methods throw `InvalidOperationException`. To modify a stored point, modify the copy returned by [Clone](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/metodos/clone.md).

A new `Point` has coordinate (0, 0, 0) and rotation 0, and its minimum and maximum coordinates ([IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/)) have not been calculated: `Valid` is `false`, `Xmin` is `null`, and `Width`, `Center`, `Color`, `Weight` and `FillColor` throw `InvalidOperationException`. Assigning `Coordinate` or calling any `Offset` method recalculates minimum and maximum coordinates. `Offset` also recalculates those of each entity containing the point, such as the complex it belongs to.

Other members (codes, colors, attributes, `Clone`, `Dispose`…) are inherited from [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) and [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/).

## Constructors

| Member | Description |
| :--- | :--- |
| [`Point(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/constructores.md) | Creates a point with one code. |
| [`Point(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/constructores.md) | Creates a point with multiple codes, in enumeration order. |

## Properties

| Member | Description |
| :--- | :--- |
| [`Point3D Coordinate { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/coordinate.md) | Insertion coordinate. |
| [`double Rotation { get; set; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md) | Symbol rotation, in degrees, counterclockwise from the X axis. |

## Methods

| Member | Description |
| :--- | :--- |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset.X` and `offset.Y` to the coordinate. Z is unchanged. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `offset` to the coordinate. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x` and `y` to the coordinate. Z is unchanged. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Adds `x`, `y` and `z` to the coordinate. |

All four `Offset` methods throw `InvalidOperationException` if the point is read-only (`ReadOnly` is `true`).

## Example

This program creates a point with rotation, stores it in a `.bind` file and stores a copy offset by 10 units in X:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Puntos <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var vértice = new Point(new Code("030101"))
{
    Coordinate = new Point3D(450000.0, 4480000.0, 650.0),
    Rotation = 45.0, // degrees
};

// Add returns the same instance as ReadOnlyPoint: from here on it is read-only.
ReadOnlyPoint guardado = archivo.Add(vértice);
Console.WriteLine($"{guardado.Coordinate} rotación {guardado.Rotation}°, ReadOnly = {guardado.ReadOnly}");

// To modify a stored point, work on a copy.
Point copia = guardado.Clone();
copia.Offset(10.0, 0.0);
archivo.Add(copia);

return 0;
```
