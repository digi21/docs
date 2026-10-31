# CoordinateTransformation
<!-- id: digi21.coordinatesystems.coordinatetransformation -->
<!-- origen: 75ab53d628c1d16a6190b2b09c7dcd664c79f5aa -->

Namespace: `Digi21.CoordinateSystems`  
Assembly: [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)

Coordinate transformation from one coordinate reference system to another.

```csharp
public sealed class CoordinateTransformation : IDisposable
```

The transformation uses native library memory. Call `Dispose` (or use `using`) when you no longer need the transformation; if you do not call `Dispose`, the garbage collector releases the transformation's memory.

## Static methods

### Create

```csharp
public static CoordinateTransformation Create(CoordinateSystem source, CoordinateSystem target)
public static CoordinateTransformation Create(CoordinateSystem source, CoordinateSystem target, TransformationOptions options)
```

Creates the transformation from `source` to `target`. `options` specifies how to choose an operation when the EPSG database contains several and how to create a vertical transformation absent from the database; without `options`, or if it is `null`, [`TransformationOptions.BestAccuracy`](transformationoptions.md#bestaccuracy) is used.

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `source` or `target` is `null`. |
| `InvalidOperationException` | `options` is `TransformationOptions.Interactive` and the thread is not the Digi3D.AI main thread. |
| `TransformationNotFoundException` | No transformation exists between the two systems, or it cannot be constructed (for example, because an NTv2 grid file is missing). |
| `CoordinateSystemException` | The user cancels a dialog box, or the `SelectOperation` delegate returns a code that is not among the operations it receives. |

If one of the delegates in `options` throws an exception, it propagates from `Create` unchanged: the exception instance and its call stack are preserved.

## Properties

| Property | Description |
| :--- | :--- |
| `CoordinateSystem Source` | Source system. |
| `CoordinateSystem Target` | Target system. |
| `string Name` | Transformation name, or an empty string. |
| `string AreaOfUse` | Area of use description, or an empty string. |
| `int SourceDimension` | Number of coordinates the transformation receives. |
| `int TargetDimension` | Number of coordinates the transformation returns. |
| `bool IsIdentity` | `true` if the transformation does not change the coordinates. |
| `CoordinateTransformation Inverse` | Inverse transformation, from `Target` to `Source`. Created when first requested and released with this transformation. |

## Methods

| Method | Description |
| :--- | :--- |
| `Point2D Transform(Point2D point)` | Transforms a 2D point. |
| `Point3D Transform(Point3D point)` | Transforms a 3D point. |
| `void Transform(Span<Point3D> points)` | Transforms points in place. |
| `void Transform(ReadOnlySpan<Point3D> source, Span<Point3D> destination)` | Transforms points from `source` and writes them to `destination`, which may overlap `source`. Throws `ArgumentException` if `destination` has fewer elements than `source`. |
| `void Transform(Span<double> coordinates, int dimension)` | Transforms contiguous coordinates (`x0, y0, x1, y1…` with `dimension` 2, or `x0, y0, z0…` with `dimension` 3) in place. |
| `void Dispose()` | Releases the transformation and its inverse. After `Dispose` releases the transformation, the `Transform` methods and the `get` accessor of `Inverse` throw `ObjectDisposedException`. |

The `Transform` methods throw `CoordinateSystemException` if a point cannot be transformed, for example because it lies outside a grid's area. In the in-place `Span` overloads, points before the failing point have already been transformed and subsequent points have not; the exception message indicates the index of the failing point.

## Dimensions

- If the target system has two dimensions, the `Z` of a transformed `Point3D` is the unchanged input `Z`.
- If the source system has two dimensions, the input `Z` is not used in the transformation.
- If the source system is vertical (one dimension), only `Z` is transformed, and `Transform(Point2D)` and `Transform(Span<double>, 2)` throw `InvalidOperationException`.

## Example

```csharp
using Digi21.CoordinateSystems;
using Digi21.Math;

var ed50 = CoordinateSystem.FromEpsg(23030);
var etrs89 = CoordinateSystem.FromEpsg(25830);

using var transformación = CoordinateTransformation.Create(ed50, etrs89);

Point3D[] puntos = LeePuntos();
transformación.Transform(puntos);                  // from ED50 to ETRS89, in the same array

var original = transformación.Inverse.Transform(puntos[0]);
```
