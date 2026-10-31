# IDesplazable
<!-- id: idesplazable -->
<!-- origen: 5070e3e197199966852f38f55a8d988b0e5427f2 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Object moved by adding an offset to its coordinates.

```csharp
public interface IDesplazable
```

Types implementing the interface:

| Type | Behavior |
| :--- | :--- |
| [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/), [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) | Move all their coordinates. Throw `InvalidOperationException` if the entity belongs to a drawing file (its `Owner` property is not `null`). |
| [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) | Ignores the Z offset. |
| [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) | Moves X, Y and Z. |
| [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) | Ignores the Z offset. Throws `InvalidOperationException` if the window is uninitialized. |
| [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) | Moves the minimum and maximum coordinates. Throws `InvalidOperationException` if the window is uninitialized. |

`Polygon` and `Complex` do not implement the interface.

`Point2D`, `Point3D`, `Window2D` and `Window3D` are value types: calling `Offset` through a variable of type `IDesplazable` moves the copy stored in that variable, not the original variable.

## Methods

| Method | Description |
| :--- | :--- |
| [Offset(Point2D)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Moves in X and Y. |
| [Offset(Point3D)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Moves in X, Y and Z. |
| [Offset(double, double)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Moves in X and Y. |
| [Offset(double, double, double)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Moves in X, Y and Z. |

## Example

This program moves a line and a text entity through the interface, and a `Point3D` directly:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;

var incremento = new Point3D(100.0, 200.0, 0.0);

var línea = new Line(new Code("020101"));
línea.Points.Add(new Point3D(0.0, 0.0, 10.0));
línea.Points.Add(new Point3D(5.0, 5.0, 12.0));

var texto = new Text(new Code("TEXTO"));
texto.Coordinate = new Point3D(1.0, 1.0, 0.0);

// Line and Text implement IDesplazable.
IDesplazable[] geometrías = [línea, texto];
foreach (var geometría in geometrías)
    geometría.Offset(incremento);

Console.WriteLine(línea.Points[0]);   // (100,200,10)
Console.WriteLine(texto.Coordinate);  // (101,201,0)

// Point3D is a value type: move the variable, not a copy.
var punto = new Point3D(1.0, 2.0, 3.0);
punto.Offset(incremento);
Console.WriteLine(punto);             // (101,202,3)
```
