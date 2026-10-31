# IWindow3D
<!-- id: iwindow3d -->
<!-- origen: d3e402e916b7bc05b78a81d49d146d7489c7814c -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Three-dimensional window (axis-aligned box): minimum and maximum coordinates, dimensions, center and cardinal points. Entities and drawing files implement this interface to expose the box they occupy.

```csharp
public interface IWindow3D
```

Types implementing the interface:

- [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md).
- [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) and all entities deriving from `Entity`.
- [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/) and therefore all drawing files.
- `Digi21.Utilities.MemoryDrawingFile`.

An uninitialized window has `Xmin` set to `null`. `Window3D` throws `InvalidOperationException` when reading `Width`, `Height`, `Depth`, `Center` or one of the eight cardinal points of an uninitialized window. Check `Valid` before reading `Width`, `Height`, `Depth`, `Center` or one of the eight cardinal points.

## Properties

| Property | Description |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Minimum X coordinate, or `null` if the window is uninitialized. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md) | Minimum Y coordinate. |
| [double Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md) | Minimum Z coordinate. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md) | Maximum X coordinate. |
| [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md) | Maximum Y coordinate. |
| [double Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Maximum Z coordinate. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | In `Window3D`, `true` if `Xmin` is not `null` and each minimum is less than or equal to its maximum. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md) | `Xmax - Xmin`. |
| [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md) | `Ymax - Ymin`. |
| [double Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Zmax - Zmin`. |
| [Point3D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Box center. |
| [Point3D NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md) | Northwest corner: (`Xmin`, `Ymax`, `Zmin`). |
| [Point3D N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md) | Midpoint of the north side. |
| [Point3D NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md) | Northeast corner: (`Xmax`, `Ymax`, `Zmin`). |
| [Point3D E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md) | Midpoint of the east side. |
| [Point3D SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md) | Southeast corner: (`Xmax`, `Ymin`, `Zmin`). |
| [Point3D S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md) | Midpoint of the south side. |
| [Point3D SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md) | Southwest corner: (`Xmin`, `Ymin`, `Zmin`). |
| [Point3D W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Midpoint of the west side. |

## Example

The `Muestra` method takes any `IWindow3D` (a `Window3D`, entity or drawing file) and reads dimensions only if the window is valid:

```csharp
using Digi21.Math;

Point3D[] puntos =
{
    new Point3D(440000, 4470000, 612.4),
    new Point3D(440250, 4470100, 655.0),
    new Point3D(440120, 4469900, 630.8),
};

// A Window3D created with new Window3D() is uninitialized: Xmin is null.
var caja = new Window3D();
foreach (var punto in puntos)
    caja.Union(punto);

Muestra(caja);

// Contains(Point3D) compares X, Y and Z; Intersect2D compares only X and Y.
var fueraDeCota = new Point3D(440100, 4470000, 700);
Console.WriteLine(caja.Contains(fueraDeCota));      // False
Console.WriteLine(caja.Intersect2D(fueraDeCota));   // True

var otra = new Window3D(440200, 4470050, 600, 440400, 4470300, 640);
Console.WriteLine(caja.Intersect(otra));            // True

var total = Window3D.Union(caja, otra);
Muestra(total);

// Conversion to Window2D discards Zmin and Zmax.
var plano = (Window2D)total;
Console.WriteLine($"{plano.Width} x {plano.Height}");

static void Muestra(IWindow3D ventana)
{
    if (!ventana.Valid)
    {
        Console.WriteLine("Ventana no válida");
        return;
    }

    Console.WriteLine($"X: {ventana.Xmin} a {ventana.Xmax}, Y: {ventana.Ymin} a {ventana.Ymax}, Z: {ventana.Zmin} a {ventana.Zmax}");
    Console.WriteLine($"{ventana.Width} x {ventana.Height} x {ventana.Depth}, centro {ventana.Center}");
}
```
