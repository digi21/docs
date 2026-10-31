# Window3D
<!-- id: window3d -->
<!-- origen: f2e1cb85151a1df1729dcbf3b7feeda5aa85303f -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Three-dimensional window (axis-aligned box), with union, containment, intersection and offset operations.

```csharp
public struct Window3D : IWindow3D, IDesplazable
```

Implements: [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) and [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Window3D` is a structure (value type): assignment copies the window, and methods modifying it (`Offset`, `Inflate` and instance `Union`) do not modify the original window when called on a copy, such as a property's return value.

An uninitialized window has `Xmin` set to `null`. This is the state of `new Window3D()` and `default(Window3D)`. The instance `Union` method initializes an uninitialized window with the argument's bounds, so a bounding box is calculated by starting with `new Window3D()` and calling `Union` for each point.

Unlike [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md), `Window3D` has no public `WholeWorld` field or `Intersection` methods.

The `Point` and `PointF` types belong to `System.Drawing`, as does `Size`. `Window3D` treats a `Point` or `PointF` as a point with Z equal to 0.

## Constructors

```csharp
public Window3D(double xMin, double yMin, double zMin, double xMax, double yMax, double zMax)
public Window3D(Point3D point)
public Window3D(IWindow3D window)
```

| Constructor | Description |
| :--- | :--- |
| `Window3D(double xMin, double yMin, double zMin, double xMax, double yMax, double zMax)` | Creates the window with these bounds. Does not check whether each minimum is less than or equal to its maximum: if not, `Valid` is `false`. |
| `Window3D(Point3D point)` | Creates a window of width, height and depth 0 at the point. |
| `Window3D(IWindow3D window)` | Copies all six bounds from `window`, including a `null` `Xmin`. Throws `NullReferenceException` if `window` is `null`. |

## Properties

| Property | Description |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmin.md) | Minimum X coordinate, or `null` if the window is uninitialized. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymin.md), [double Zmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmin.md) | Minimum Y and Z coordinates. |
| [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/xmax.md), [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ymax.md), [double Zmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/zmax.md) | Maximum X, Y and Z coordinates. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/valid.md) | `true` if `Xmin` is not `null`, `Xmin <= Xmax`, `Ymin <= Ymax` and `Zmin <= Zmax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/width.md), [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/height.md), [double Depth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/depth.md) | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| [Point3D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/center.md) | Box center. |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/nw.md), [N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/n.md), [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/ne.md), [E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/e.md), [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/se.md), [S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/s.md), [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/sw.md), [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/propiedades/w.md) | Corners and side midpoints in the X, Y plane, of type `Point3D`. All eight points have Z equal to `Zmin`. |

`Width`, `Height`, `Depth`, `Center` and the eight points throw `InvalidOperationException` if `Xmin` is `null`. If `Xmin` is not `null` but `Valid` is `false`, they do not throw an exception and return values calculated from those bounds.

## Methods

### Offset

```csharp
public void Offset(double x, double y, double z)
public void Offset(double x, double y)
public void Offset(Point3D offset)
public void Offset(Point2D offset)
```

Adds `x`, `y` and `z` to each axis's minima and maxima. Overloads without Z (`Offset(double, double)` and `Offset(Point2D)`) offset Z by 0. Throws `InvalidOperationException` if `Xmin` is `null`. These are the [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) methods.

### Inflate

```csharp
public void Inflate(double x, double y, double z)
public void Inflate(double x, double y)
public void Inflate(Point3D size)
public void Inflate(Size size)
```

Subtracts `x`, `y` and `z` from minima and adds them to maxima: each dimension increases by twice the value. A negative value shrinks the window. `Inflate(double, double)` and `Inflate(Size)` do not change Z; `Inflate(Size)` uses `size.Width` and `size.Height`. Throws `InvalidOperationException` if `Xmin` is `null`.

### Union

```csharp
public void Union(Point3D point)
public void Union(PointF point)
public void Union(Point point)
public void Union(Window3D window)
public void Union(IWindow3D window)
public void Union(double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
```

Expands the window to contain the argument's point or window.

- If `Xmin` is `null`, the window takes the argument's bounds: a point produces a window with dimensions 0, and a window is copied as is, even if uninitialized.
- If `Xmin` is not `null` and the argument is an uninitialized window, throws `InvalidOperationException`.
- `Union(PointF)` and `Union(Point)` use Z equal to 0: the resulting window always includes elevation 0.
- `Union(IWindow3D)` throws `NullReferenceException` if `window` is `null`.

The parameter order of `Union(double, …)` is `xMin`, `xMax`, `yMin`, `yMax`, `zMin`, `zMax`, different from the constructor's order.

### Contains

```csharp
public bool Contains(Point3D point)
public bool Contains(PointF point)
public bool Contains(Point point)
public bool Contains(Window3D window)
public bool Contains(IWindow3D window)
```

Returns `true` if the argument's point or window is inside this window, including edges. `Contains(Point3D)` and overloads with a window compare X, Y and Z; `Contains(PointF)` and `Contains(Point)` compare only X and Y. Throws `InvalidOperationException` if this window's `Xmin` is `null` or, in overloads with a window, if the argument's `Xmin` is `null`.

### Intersect and Intersect2D

```csharp
public bool Intersect(Window3D window)
public bool Intersect2D(Window3D window)
public bool Intersect2D(Point3D point)
```

`Intersect` returns `true` if the two boxes share any point in X, Y and Z, including a shared edge. `Intersect2D` compares only X and Y: with a point, returns `true` if the point's X and Y lie within the window. They throw `InvalidOperationException` if `Xmin` of this window or `window` is `null`.

### ToString

```csharp
public override string ToString()
```

Returns `Xmin=… Ymin=… Zmin=… Xmax=… Ymax=… Zmax=… Width=… Height=… Long=…` or, if `Xmin` is `null`, `(Uninitialized window)`. Text uses the user interface language (`CultureInfo.CurrentUICulture`): in Spanish, `Ancho`, `Alto` and `Largo`, and `(Ventana sin inicializar)`.

## Static methods

### Union

```csharp
public static Window3D Union(Window3D a, Window3D b)
public static Window3D Union(IWindow3D a, IWindow3D b)
```

Returns the box containing `a` and `b`. If one window is uninitialized, returns the other; if neither is initialized, returns `a` (uninitialized).

```csharp
public static Window3D Union(Window3D window, Point3D point)
public static Window3D Union(Window3D window, PointF point)
public static Window3D Union(Window3D window, Point point)
public static Window3D Union(IWindow3D window, Point3D point)
public static Window3D Union(IWindow3D window, PointF point)
public static Window3D Union(IWindow3D window, Point point)
public static Window3D Union(Window3D window, double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
public static Window3D Union(IWindow3D window, double xMin, double xMax, double yMin, double yMax, double zMin, double zMax)
```

Returns the box containing `window` and the point or the box defined by the six bounds. With `PointF` or `Point`, the point's Z is 0. If `window`'s `Xmin` is `null`, returns the point's box with dimensions 0 or the box defined by the six bounds.

Overloads with `IWindow3D` throw `NullReferenceException` if the argument is `null`. Methods do not modify their arguments.

## Operators

```csharp
public static explicit operator Window2D(Window3D window)
```

Converts the window to a [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) with the same `Xmin`, `Ymin`, `Xmax` and `Ymax`. Discards `Zmin` and `Zmax`. An uninitialized window converts to an uninitialized `Window2D`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | `Width`, `Height`, `Depth`, `Center` or a cardinal point is read, or `Offset`, `Inflate`, `Contains`, `Intersect` or `Intersect2D` is called on a window with `Xmin` set to `null`, or with a window argument whose `Xmin` is `null`. Also thrown when calling instance `Union` on an initialized window with an uninitialized window argument. |
| `NullReferenceException` | An argument of type `IWindow3D` is `null`. |

## Example

This program calculates the bounding box of three points, checks its relation to a point and another box, and converts the result to a `Window2D`:

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
