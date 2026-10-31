# Point2D
<!-- id: point2d -->
<!-- origen: 5f4c1b2e5316781de22408df99396c7631f7358f -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Point or vector in the X, Y plane.

```csharp
public struct Point2D : IDesplazable
```

Implements: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Point2D` is a value type: assignment copies the coordinates, and `Offset` modifies the variable on which it is called.

The `==` and `!=` operators compare each coordinate using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance. `Equals`, inherited from `ValueType`, compares coordinates without tolerance.

## Constructors

| Constructor | Description |
| :--- | :--- |
| `Point2D(double x, double y)` | Creates the point (`x`, `y`). |
| `Point2D(double value)` | Creates the point (`value`, `value`). |
| `Point2D(Point3D point)` | Copies X and Y from `point`. |

## Properties

| Property | Description |
| :--- | :--- |
| `double X { get; set; }` | X coordinate. |
| `double Y { get; set; }` | Y coordinate. |
| `double Module { get; }` | Vector magnitude: √(X² + Y²). |
| `double SquaredModule { get; }` | Squared magnitude: X² + Y². |
| `Point2D Normalized { get; }` | Vector with the same direction and magnitude 1. If the magnitude is 0, the result's coordinates are `NaN`. |
| `bool IsEmpty { get; }` | `true` if X and Y are exactly 0, without tolerance. |
| `double Azimuth { get; }` | Vector azimuth in radians, from 0 to 2π inclusive: clockwise angle from the positive Y axis (north). For the vector (0, 0), the property returns 0 radians. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Offset(Point2D offset)`<br>`void Offset(Point3D offset)`<br>`void Offset(double x, double y)`<br>`void Offset(double x, double y, double z)` | Adds the offset to X and Y. Overloads with Z ignore Z. Read [IDesplazable.Offset](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md). |
| `string ToString()` | Returns `(X,Y)`. Numbers are formatted using the current culture: with `es-ES`, the point (1.5; 2) is written as `(1,5,2)`. |

## Static methods

| Method | Description |
| :--- | :--- |
| `double DotProduct(Point2D a, Point2D b)` | Dot product: `a.X * b.X + a.Y * b.Y`. |
| `double CalculateModule(Point2D a, Point2D b)`<br>`double CalculateModule(Point2D a, Point3D b)`<br>`double CalculateModule(Point3D a, Point2D b)`<br>`double CalculateModule(Point3D a, Point3D b)` | Distance between `a` and `b` in the X, Y plane. The Z coordinates of the `Point3D` values are not involved. |
| `double CalculateSquaredModule(Point2D a, Point2D b)` | Squared distance between `a` and `b`. |

## Operators

| Operator | Description |
| :--- | :--- |
| `explicit operator Point3D(Point2D point)` | Converts the point to the `Point3D` (X, Y, 0). |
| `bool operator ==(Point2D a, Point2D b)` | `true` if X and Y are equal according to `Precision.Epsilon`. |
| `bool operator !=(Point2D a, Point2D b)` | `true` if X or Y differs according to `Precision.Epsilon`. |
| `Point2D operator +(Point2D a, Point2D b)` | Adds coordinate by coordinate. |
| `Point2D operator -(Point2D a, Point2D b)` | Subtracts coordinate by coordinate: the vector from `b` to `a`. |
| `Point2D operator *(Point2D a, double factor)` | Multiplies X and Y by `factor`. |
| `Point2D operator /(Point2D a, double factor)` | Divides X and Y by `factor`. |

Comparisons between a `Point2D` and a `Point3D` are defined in [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md).

## Example

This program calculates distances, azimuths and cross products for several points, and compares points with tolerance:

```csharp
using Digi21.Math;

var origen = new Point3D(1000.0, 2000.0, 50.0);
var destino = new Point3D(1003.0, 2004.0, 62.0);

// Vector from source to target.
var vector = destino - origen;
Console.WriteLine(vector.Module);                                  // 13
Console.WriteLine(Point2D.CalculateModule(origen, destino));       // 5: distance in the X, Y plane
Console.WriteLine(Point3D.CalculateModule(origen, destino));       // 13: distance in space

// Vector azimuth in the plane, in degrees.
var azimut = Angles.RadianToSexagesimal(vector.Point2D.Azimuth);
Console.WriteLine(azimut);                                         // ≈ 36.87

// Cross product of the X and Y axes: Z axis.
var z = Point3D.CrossProduct(new Point3D(1, 0, 0), new Point3D(0, 1, 0));
Console.WriteLine(z == new Point3D(0, 0, 1));                      // True

// Point2D is a value type: Offset modifies the variable.
var punto = new Point2D(10.0, 20.0);
punto.Offset(1.0, 2.0);
Console.WriteLine(punto.X);                                        // 11

// Comparisons with == use Precision.Epsilon.
Precision.Epsilon = 0.001;
Console.WriteLine(new Point2D(1.0, 1.0) == new Point2D(1.0004, 1.0)); // True
Console.WriteLine(origen == new Point2D(1000.0, 2000.0));            // True: only X and Y are compared
```
