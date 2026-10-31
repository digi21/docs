# IWindow2D
<!-- id: iwindow2d -->
<!-- origen: a2ca7c64be719a01101a8498a99e74a36a1283ea -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Window (axis-aligned rectangle) in the X, Y plane: minimum and maximum coordinates, dimensions, center and cardinal points.

```csharp
public interface IWindow2D
```

Types implementing the interface: [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md).

An uninitialized window has `Xmin` set to `null`. `Window2D` throws `InvalidOperationException` when reading `Width`, `Height`, `Center` or one of the eight cardinal points of an uninitialized window. Check `Valid` before reading `Width`, `Height`, `Center` or one of the eight cardinal points.

## Properties

| Property | Description |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmin.md) | Minimum X coordinate, or `null` if the window is uninitialized. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymin.md) | Minimum Y coordinate. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmax.md) | Maximum X coordinate. |
| [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymax.md) | Maximum Y coordinate. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/valid.md) | `true` if `Xmin` is not `null`, `Xmin <= Xmax` and `Ymin <= Ymax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/width.md) | `Xmax - Xmin`. |
| [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/height.md) | `Ymax - Ymin`. |
| [Point2D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/center.md) | Window center. |
| [Point2D NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/nw.md) | Northwest corner: (`Xmin`, `Ymax`). |
| [Point2D N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/n.md) | Midpoint of the north side. |
| [Point2D NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ne.md) | Northeast corner: (`Xmax`, `Ymax`). |
| [Point2D E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/e.md) | Midpoint of the east side. |
| [Point2D SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/se.md) | Southeast corner: (`Xmax`, `Ymin`). |
| [Point2D S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/s.md) | Midpoint of the south side. |
| [Point2D SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/sw.md) | Southwest corner: (`Xmin`, `Ymin`). |
| [Point2D W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/w.md) | Midpoint of the west side. |

## Example

The `Muestra` method takes any `IWindow2D` and reads dimensions only if the window is valid:

```csharp
using Digi21.Math;

Point2D[] puntos =
{
    new Point2D(440000, 4470000),
    new Point2D(440250, 4470100),
    new Point2D(440120, 4469900),
};

// A Window2D created with new Window2D() is uninitialized: Xmin is null.
var envolvente = new Window2D();
Console.WriteLine(envolvente.Valid);        // False

foreach (var punto in puntos)
    envolvente.Union(punto);

Muestra(envolvente);

var hoja = new Window2D(440100, 4469950, 440500, 4470300);
Console.WriteLine(hoja.Contains(puntos[1]));          // True
Console.WriteLine(envolvente.Intersects(hoja));       // True

var comun = envolvente.Intersection(hoja);
Muestra(comun);

var lejana = new Window2D(500000, 4400000, 500100, 4400100);
var vacia = envolvente.Intersection(lejana);
Console.WriteLine(vacia.Valid);             // False: the windows do not overlap

// Expand by 10 units on each side.
envolvente.Inflate(10, 10);
Muestra(envolvente);

static void Muestra(IWindow2D ventana)
{
    if (!ventana.Valid)
    {
        Console.WriteLine("Ventana no válida");
        return;
    }

    Console.WriteLine($"X: {ventana.Xmin} a {ventana.Xmax}, Y: {ventana.Ymin} a {ventana.Ymax}");
    Console.WriteLine($"Ancho {ventana.Width}, alto {ventana.Height}, centro {ventana.Center}");
}
```
