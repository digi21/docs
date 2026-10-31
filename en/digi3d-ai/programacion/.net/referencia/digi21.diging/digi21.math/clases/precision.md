# Precision
<!-- id: precision -->
<!-- origen: 8d26cf638a022eec8151b47c423b5f592de83ae4 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

This class defines a tolerance (epsilon) for considering two `double` values equal when their absolute difference is less than that tolerance, and provides `double` extension methods comparing two `double` values using that tolerance.

```csharp
public static class Precision
```

`Epsilon` is a single value for the entire process: it is the same tolerance used by Digi3D.AI in its geometric calculations and by the `==` and `!=` operators of [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) and [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md). Digi3D.AI assigns `Epsilon` the configuration's `Sigma` parameter value (0.001 by default) whenever it opens or creates a drawing file. An extension assigning `Epsilon` changes comparisons throughout the program.

Outside Digi3D.AI, `Epsilon` is 0.001 until another value is assigned.

## Properties

| Property | Description |
| :--- | :--- |
| `static double Epsilon { get; set; }` | Comparison tolerance. With a value of 0, comparisons are exact. |

## Extension methods

| Method | Description |
| :--- | :--- |
| `bool IsEqual(this double valueA, double valueB)` | `true` if \|`valueA` − `valueB`\| < `Epsilon`. With `Epsilon` equal to 0, `true` if both values are equal. |
| `bool IsDistinct(this double valueA, double valueB)` | Negation of `IsEqual`. |
| `bool IsGreater(this double valueA, double valueB)` | `true` if `IsEqual` is `false` and `valueA` > `valueB`. |
| `bool IsGreaterOrEqual(this double valueA, double valueB)` | `true` if `IsEqual` is `true` or `valueA` > `valueB`. |
| `bool IsLower(this double valueA, double valueB)` | `true` if `IsEqual` is `false` and `valueA` < `valueB`. |
| `bool IsLowerOrEqual(this double valueA, double valueB)` | `true` if `IsEqual` is `true` or `valueA` < `valueB`. |

Methods can be called as extension methods (`a.IsEqual(b)`) or static methods (`Precision.IsEqual(a, b)`).

## Example

```csharp
using Digi21.Math;

var a = 123.000;
var b = 123.0004;

Precision.Epsilon = 0.001;
Console.WriteLine(a.IsEqual(b));          // True: |a - b| < 0.001
Console.WriteLine(a.IsLower(b));          // False: a and b are considered equal
Console.WriteLine(a.IsLowerOrEqual(b));   // True

Precision.Epsilon = 0.0001;
Console.WriteLine(Precision.IsEqual(a, b)); // False
Console.WriteLine(a.IsLower(b));            // True

// With epsilon 0, comparison is exact.
Precision.Epsilon = 0.0;
Console.WriteLine(a.IsDistinct(b));         // True
```
