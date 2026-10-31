# UtilidadesSecuenciaPoint2D
<!-- id: digi21.utilities.utilidadessecuenciapoint2d -->
<!-- origen: f168d607619bf75fa03550ff215576e0722f1953 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

`IEnumerable<Point2D>` extension method.

```csharp
public static class UtilidadesSecuenciaPoint2D
```

## Static methods

### ContieneElPunto

```csharp
public static bool ContieneElPunto(this IEnumerable<Point2D> secuencia, Point2D punto)
```

Returns `true` if an element of `secuencia` equals `point` according to the [Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md) `==` operator, which compares X and Y using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance. LINQ's `Enumerable.Contains`, in contrast, compares through `EqualityComparer<Point2D>.Default` rather than `==`.

Throws `ArgumentNullException` if `secuencia` is `null`.

## Example

This program checks whether a point is among a list's vertices:

```csharp
using Digi21.Math;
using Digi21.Utilities;

Point2D[] vértices = [new Point2D(0, 0), new Point2D(10, 0), new Point2D(10, 10)];

Console.WriteLine(vértices.ContieneElPunto(new Point2D(10, 0)));  // True
Console.WriteLine(vértices.ContieneElPunto(new Point2D(5, 5)));   // False
```
