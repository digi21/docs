# Point3D
<!-- id: point3d -->
<!-- origen: 561842f799ee259c233d269e313e0df4d8e85f7a -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Point or vector in space. This is the type of entity coordinates.

```csharp
public struct Point3D : IDesplazable
```

Implements: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/).

`Point3D` is a value type: assignment copies the coordinates, and `Offset` modifies the variable on which it is called. A property returning a `Point3D`, such as `Point.Coordinate`, returns a copy: to change the entity's coordinate, assign the modified point to the property.

The `==` and `!=` operators compare each coordinate using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance. `Equals`, inherited from `ValueType`, compares coordinates without tolerance.

## Constructors

| Constructor | Description |
| :--- | :--- |
| `Point3D(double x, double y, double z)` | Creates the point (`x`, `y`, `z`). |
| `Point3D(double value)` | Creates the point (`value`, `value`, `value`). |
| `Point3D(Point2D point)` | Creates the point (`point.X`, `point.Y`, 0). |

## Properties

| Property | Description |
| :--- | :--- |
| `double X { get; set; }` | X coordinate. |
| `double Y { get; set; }` | Y coordinate. |
| `double Z { get; set; }` | Z coordinate. |
| `Point2D Point2D { get; }` | [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) containing X and Y. |
| `double Module { get; }` | Vector magnitude: √(X² + Y² + Z²). |
| `double SquaredModule { get; }` | Squared magnitude: X² + Y² + Z². |
| `Point3D Normalized { get; }` | Vector with the same direction and magnitude 1. If the magnitude is 0, the result's coordinates are `NaN`. |
| `bool IsEmpty { get; }` | `true` if X, Y and Z are exactly 0, without tolerance. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Offset(Point2D offset)`<br>`void Offset(double x, double y)` | Adds the offset to X and Y. Z is unchanged. |
| `void Offset(Point3D offset)`<br>`void Offset(double x, double y, double z)` | Adds the offset to X, Y and Z. |
| `string ToString()` | Returns `(X,Y,Z)`. Numbers are formatted using the current culture: with `es-ES`, the point (1.5; 2; 3) is written as `(1,5,2,3)`. |

The `Offset` methods implement [IDesplazable.Offset](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md).

## Static methods

| Method | Description |
| :--- | :--- |
| `double DotProduct(Point3D a, Point3D b)` | Dot product: `a.X * b.X + a.Y * b.Y + a.Z * b.Z`. |
| `Point3D CrossProduct(Point3D a, Point3D b)` | Cross product `a × b`. |
| `double CalculateModule(Point3D a, Point3D b)` | Distance between `a` and `b` in space. |
| `double CalculateModule(Point3D a, Point2D b)`<br>`double CalculateModule(Point2D a, Point3D b)` | Distance in space between the `Point3D` and the `Point2D`, with Z = 0 for the `Point2D`. For distance in the X, Y plane, use `Point2D.CalculateModule`. |
| `double CalculateSquaredModule(Point3D a, Point3D b)` | Squared distance between `a` and `b` in space. |

## Operators

| Operator | Description |
| :--- | :--- |
| `explicit operator Point2D(Point3D point)` | Converts the point to the `Point2D` (X, Y). |
| `bool operator ==(Point3D a, Point3D b)` | `true` if X, Y and Z are equal according to `Precision.Epsilon`. |
| `bool operator !=(Point3D a, Point3D b)` | `true` if X, Y or Z differs according to `Precision.Epsilon`. |
| `bool operator ==(Point3D a, Point2D b)`<br>`bool operator ==(Point2D a, Point3D b)` | `true` if X and Y are equal according to `Precision.Epsilon`. Z is not compared. |
| `bool operator !=(Point3D a, Point2D b)`<br>`bool operator !=(Point2D a, Point3D b)` | `true` if X or Y differs according to `Precision.Epsilon`. Z is not compared. |
| `Point3D operator +(Point3D a, Point3D b)` | Adds coordinate by coordinate. |
| `Point3D operator -(Point3D a, Point3D b)` | Subtracts coordinate by coordinate: the vector from `b` to `a`. |
| `Point3D operator *(Point3D a, double factor)` | Multiplies X, Y and Z by `factor`. |
| `Point3D operator /(Point3D a, double factor)` | Divides X, Y and Z by `factor`. |

## Example

The [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) example calculates distances, azimuths and cross products with `Point3D`, and compares a `Point3D` with a `Point2D`.
