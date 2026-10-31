# Window2D
<!-- id: window2d -->
<!-- origen: 5e94b669d15a0202175afcbd2b44632ccaab4678 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Window (axis-aligned rectangle) in the X, Y plane, with union, intersection, containment and offset operations.

```csharp
public struct Window2D : IWindow2D, IDesplazable
```

Implements: [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/) and [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Window2D` is a structure (value type): assignment copies the window, and methods modifying it (`Offset`, `Inflate` and instance `Union`) do not modify the original window when called on a copy, such as a property's return value.

An uninitialized window has `Xmin` set to `null`. This is the state of `new Window2D()` and `default(Window2D)`. The instance `Union` method initializes an uninitialized window with the argument's bounds, so a bounding rectangle is calculated by starting with `new Window2D()` and calling `Union` for each point.

The `Point` and `PointF` types belong to `System.Drawing`, as does `Size`.

## Constructors

```csharp
public Window2D(double xMin, double yMin, double xMax, double yMax)
public Window2D(double? xMin, double yMin, double xMax, double yMax)
public Window2D(Point2D point)
public Window2D(Point3D point)
public Window2D(IWindow2D window)
public Window2D(IWindow3D window)
```

| Constructor | Description |
| :--- | :--- |
| `Window2D(double xMin, double yMin, double xMax, double yMax)` | Creates the window with these bounds. Does not check `xMin <= xMax` or `yMin <= yMax`: if either condition is unmet, `Valid` is `false`. |
| `Window2D(double? xMin, double yMin, double xMax, double yMax)` | Creates the window without checking bound order. If `xMin` is `null`, the window is uninitialized. |
| `Window2D(Point2D point)`, `Window2D(Point3D point)` | Creates a window of width and height 0 at the point's X and Y. |
| `Window2D(IWindow2D window)`, `Window2D(IWindow3D window)` | Copies `Xmin`, `Ymin`, `Xmax` and `Ymax` from `window`, including a `null` `Xmin`. Discards `Zmin` and `Zmax` from an `IWindow3D`. Throws `NullReferenceException` if `window` is `null`. |

## Static fields

| Field | Description |
| :--- | :--- |
| `static readonly Window2D WholeWorld` | Window from (`-double.MaxValue`, `-double.MaxValue`) to (`double.MaxValue`, `double.MaxValue`). |

## Properties

| Property | Description |
| :--- | :--- |
| [double? Xmin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmin.md) | Minimum X coordinate, or `null` if the window is uninitialized. |
| [double Ymin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymin.md), [double Xmax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/xmax.md), [double Ymax](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ymax.md) | Minimum Y, maximum X and maximum Y coordinates. |
| [bool Valid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/valid.md) | `true` if `Xmin` is not `null`, `Xmin <= Xmax` and `Ymin <= Ymax`. |
| [double Width](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/width.md), [double Height](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/height.md) | `Xmax - Xmin` and `Ymax - Ymin`. |
| [Point2D Center](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/center.md) | Window center. |
| [NW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/nw.md), [N](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/n.md), [NE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/ne.md), [E](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/e.md), [SE](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/se.md), [S](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/s.md), [SW](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/sw.md), [W](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/propiedades/w.md) | Corners and side midpoints, of type `Point2D`. |

`Width`, `Height`, `Center` and the eight points throw `InvalidOperationException` if `Xmin` is `null`. If `Xmin` is not `null` but `Valid` is `false` (a minimum exceeds its maximum), they do not throw an exception and return values calculated from those bounds.

## Methods

### Offset

```csharp
public void Offset(double x, double y)
public void Offset(double x, double y, double z)
public void Offset(Point2D offset)
public void Offset(Point3D offset)
```

Adds `x` to `Xmin` and `Xmax`, and `y` to `Ymin` and `Ymax`. Overloads with `z` or `Point3D` discard Z. Throws `InvalidOperationException` if `Xmin` is `null`. These are the [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/) methods.

### Inflate

```csharp
public void Inflate(double x, double y)
public void Inflate(Point2D size)
public void Inflate(Size size)
```

Subtracts `x` from `Xmin` and adds it to `Xmax`; subtracts `y` from `Ymin` and adds it to `Ymax`. Width increases by `2 * x` and height by `2 * y`. A negative `x` reduces the window's width, and a negative `y` reduces its height. `Inflate(Point2D)` uses `size.X` and `size.Y`; `Inflate(Size)` uses `size.Width` and `size.Height`. `Inflate` throws `InvalidOperationException` if `Xmin` is `null`.

### Union

```csharp
public void Union(Point2D point)
public void Union(Point3D point)
public void Union(PointF point)
public void Union(Point point)
public void Union(Window2D window)
public void Union(Window3D window)
public void Union(IWindow2D window)
public void Union(IWindow3D window)
public void Union(double xMin, double yMin, double xMax, double yMax)
```

Expands the window to contain the argument's point or window. Only X and Y are used from a `Point3D` or three-dimensional window.

- If `Xmin` is `null`, the window takes the argument's bounds: a point produces a window of width and height 0, and a window is copied as is, even if uninitialized.
- If `Xmin` is not `null` and the argument is an uninitialized window, throws `InvalidOperationException`.
- The `IWindow2D` and `IWindow3D` overloads throw `NullReferenceException` if `window` is `null`.

`Union(double xMin, double yMin, double xMax, double yMax)` adds the rectangle from (`xMin`, `yMin`) to (`xMax`, `yMax`), with parameters in the same order as the constructor. Static `Union` overloads with four `double` values use the same order.

### Intersection

```csharp
public Window2D Intersection(Window2D window)
public Window2D Intersection(Window3D window)
public Window2D Intersection(IWindow2D window)
public Window2D Intersection(IWindow3D window)
public Window2D Intersection(double? xMin, double xMax, double yMin, double yMax)
```

Returns the rectangle common to this window and the argument, without modifying this window. If the windows do not overlap, the result has `Xmin` set to `null` and `Valid` set to `false`. If they only touch at an edge, the result is valid, with width or height 0. Throws `InvalidOperationException` if `Xmin` of this window or the argument is `null`.

### Contains

```csharp
public bool Contains(Point2D point)
public bool Contains(Point3D point)
public bool Contains(PointF point)
public bool Contains(Point point)
public bool Contains(Window2D window)
public bool Contains(Window3D window)
public bool Contains(IWindow2D window)
public bool Contains(IWindow3D window)
public bool Contains(double xMin, double xMax, double yMin, double yMax)
```

Returns `true` if the argument's point or window is inside this window in the X, Y plane. Edges count as interior: a point on an edge is contained. Throws `InvalidOperationException` if this window's `Xmin` is `null` or, in overloads taking a window, if the argument's `Xmin` is `null`.

### Intersects

```csharp
public bool Intersects(Window2D window)
public bool Intersects(Window3D window)
public bool Intersects(IWindow2D window)
public bool Intersects(IWindow3D window)
public bool Intersects(double xMin, double xMax, double yMin, double yMax)
public bool Intersects(double? xMin, double xMax, double yMin, double yMax)
```

Returns `true` if this window and the argument share any point in the X, Y plane, including a shared edge. Throws `InvalidOperationException` if `Xmin` of this window or the argument is `null`.

### ToString

```csharp
public override string ToString()
```

Returns `Xmin=… Ymin=… Xmax=… Ymax=… Width=… Height=…` or, if `Xmin` is `null`, `(Uninitialized window)`. Text uses the user interface language (`CultureInfo.CurrentUICulture`): in Spanish, `Ancho` and `Alto`, and `(Ventana sin inicializar)`.

## Static methods

In this section's overloads, `a` and `windowA` are the first window, and `b` and `windowB` the second. Methods do not modify their arguments. Overloads taking `IWindow2D` or `IWindow3D` throw `NullReferenceException` if the argument is `null`.

### Union

```csharp
public static Window2D Union(Window2D a, Window2D b)
public static Window2D Union(Window2D a, Window3D b)
public static Window2D Union(Window3D a, Window2D b)
public static Window2D Union(Window3D a, Window3D b)
public static Window2D Union(Window2D a, IWindow2D b)
public static Window2D Union(Window2D a, IWindow3D b)
public static Window2D Union(Window3D a, IWindow2D b)
public static Window2D Union(Window3D a, IWindow3D b)
public static Window2D Union(IWindow2D a, Window2D b)
public static Window2D Union(IWindow2D a, Window3D b)
public static Window2D Union(IWindow3D a, Window2D b)
public static Window2D Union(IWindow3D a, Window3D b)
public static Window2D Union(IWindow2D a, IWindow2D b)
public static Window2D Union(IWindow2D a, IWindow3D b)
public static Window2D Union(IWindow3D a, IWindow2D b)
public static Window2D Union(IWindow3D a, IWindow3D b)
```

Returns the rectangle containing `a` and `b`. If one window is uninitialized, returns the other; if neither is initialized, returns `a` (uninitialized).

```csharp
public static Window2D Union(Window2D window, Point2D point)
public static Window2D Union(Window2D window, Point3D point)
public static Window2D Union(Window2D window, PointF point)
public static Window2D Union(Window2D window, Point point)
public static Window2D Union(Window3D window, Point2D point)
public static Window2D Union(Window3D window, Point3D point)
public static Window2D Union(Window3D window, PointF point)
public static Window2D Union(Window3D window, Point point)
public static Window2D Union(IWindow2D window, Point2D point)
public static Window2D Union(IWindow2D window, Point3D point)
public static Window2D Union(IWindow2D window, PointF point)
public static Window2D Union(IWindow2D window, Point point)
public static Window2D Union(IWindow3D window, Point2D point)
public static Window2D Union(IWindow3D window, Point3D point)
public static Window2D Union(IWindow3D window, PointF point)
public static Window2D Union(IWindow3D window, Point point)
public static Window2D Union(Window2D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(Window3D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(IWindow2D window, double xMin, double yMin, double xMax, double yMax)
public static Window2D Union(IWindow3D window, double xMin, double yMin, double xMax, double yMax)
```

Returns the rectangle containing `window` and the point, or `window` and the rectangle from (`xMin`, `yMin`) to (`xMax`, `yMax`). If `window`'s `Xmin` is `null`, returns the point's window of width and height 0, or the rectangle defined by the four bounds.

### Intersection

```csharp
public static Window2D Intersection(Window2D windowA, Window2D windowB)
public static Window2D Intersection(Window2D windowA, Window3D windowB)
public static Window2D Intersection(Window3D windowA, Window2D windowB)
public static Window2D Intersection(Window3D windowA, Window3D windowB)
public static Window2D Intersection(Window2D windowA, IWindow2D windowB)
public static Window2D Intersection(Window2D windowA, IWindow3D windowB)
public static Window2D Intersection(Window3D windowA, IWindow2D windowB)
public static Window2D Intersection(Window3D windowA, IWindow3D windowB)
public static Window2D Intersection(IWindow2D windowA, Window2D windowB)
public static Window2D Intersection(IWindow2D windowA, Window3D windowB)
public static Window2D Intersection(IWindow3D windowA, Window2D windowB)
public static Window2D Intersection(IWindow3D windowA, Window3D windowB)
public static Window2D Intersection(IWindow2D windowA, IWindow2D windowB)
public static Window2D Intersection(IWindow2D windowA, IWindow3D windowB)
public static Window2D Intersection(IWindow3D windowA, IWindow2D windowB)
public static Window2D Intersection(IWindow3D windowA, IWindow3D windowB)
public static Window2D Intersection(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
```

Returns the rectangle common to both windows. If they do not overlap, the result has `Xmin` set to `null`. Throws `InvalidOperationException` if either window's `Xmin` (or `xMinA` or `xMinB`) is `null`.

### Contains

```csharp
public static bool Contains(Window2D windowA, Window2D windowB)
public static bool Contains(Window2D windowA, Window3D windowB)
public static bool Contains(Window3D windowA, Window2D windowB)
public static bool Contains(Window3D windowA, Window3D windowB)
public static bool Contains(Window2D windowA, IWindow2D windowB)
public static bool Contains(Window2D windowA, IWindow3D windowB)
public static bool Contains(Window3D windowA, IWindow2D windowB)
public static bool Contains(Window3D windowA, IWindow3D windowB)
public static bool Contains(IWindow2D windowA, Window2D windowB)
public static bool Contains(IWindow2D windowA, Window3D windowB)
public static bool Contains(IWindow3D windowA, Window2D windowB)
public static bool Contains(IWindow3D windowA, Window3D windowB)
public static bool Contains(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
```

Returns `true` if `windowB` lies inside `windowA` in the X, Y plane, including edges. No overload takes both windows as interface types. Throws `InvalidOperationException` if either window's `Xmin` is `null`.

### Intersects

```csharp
public static bool Intersects(Window2D windowA, Window2D windowB)
public static bool Intersects(Window2D windowA, Window3D windowB)
public static bool Intersects(Window3D windowA, Window2D windowB)
public static bool Intersects(Window3D windowA, Window3D windowB)
public static bool Intersects(IWindow2D windowA, IWindow2D windowB)
public static bool Intersects(IWindow2D windowA, IWindow3D windowB)
public static bool Intersects(IWindow3D windowA, IWindow2D windowB)
public static bool Intersects(IWindow3D windowA, IWindow3D windowB)
public static bool Intersects(double? xMinA, double xMaxA, double yMinA, double yMaxA, double? xMinB, double xMaxB, double yMinB, double yMaxB)
public static bool Intersects(double xMinA, double xMaxA, double yMinA, double yMaxA, double xMinB, double xMaxB, double yMinB, double yMaxB)
```

Returns `true` if the two windows share any point in the X, Y plane, including a shared edge. No overloads mix a structure and an interface. Overloads with windows or `double?` throw `InvalidOperationException` if either window's `Xmin` is `null`; the overload with eight `double` values does not throw exceptions.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | `Width`, `Height`, `Center` or a cardinal point is read, or `Offset`, `Inflate`, `Intersection`, `Contains` or `Intersects` is called on a window with `Xmin` set to `null`, or with a window argument whose `Xmin` is `null`. Also thrown when calling instance `Union` on an initialized window with an uninitialized window argument. |
| `NullReferenceException` | An argument of type `IWindow2D` or `IWindow3D` is `null`. |

## Example

This program calculates the bounding rectangle of three points, its intersection with another window, and expands the bounding rectangle:

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
