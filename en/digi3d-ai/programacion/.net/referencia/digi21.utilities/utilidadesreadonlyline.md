# UtilidadesReadOnlyLine
<!-- id: digi21.utilities.utilidadesreadonlyline -->
<!-- origen: caebdb42d61466210baaa1e8e9a168656b0857c5 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

[ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) extension methods for measuring distances and checking whether two lines meet at their endpoints.

```csharp
public static class UtilidadesReadOnlyLine
```

All distance calculations take place in the XY plane: Z is ignored. Coordinate comparisons use the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance.

## Static methods

### DistanciaMínima

```csharp
public static double DistanciaMínima(this ReadOnlyLine línea, Point3D punto)
```

Returns the minimum distance in the XY plane between `point` and the infinite line passing through each line segment. Only segments whose box (the rectangle defined by their two vertices in XY) contains `point` are considered.

Throws `Exception` with the message "The point not intersects the line." if `point` is not in any segment's box.

### SegmentoMásCercano

```csharp
public static int SegmentoMásCercano(this ReadOnlyLine línea, Point3D punto)
```

Returns the index of the segment giving the distance in `DistanciaMínima`. Segment `i` joins vertices `i` and `i + 1`. If two segments give the same distance, returns the lower index. Throws the same exception as `DistanciaMínima`.

### TieneContinuidadCon

```csharp
public static bool TieneContinuidadCon(this ReadOnlyLine líneaA, ReadOnlyLine líneaB)
```

Returns `true` if an endpoint of `líneaA` (first or last vertex) coincides in X, Y and Z with an endpoint of `líneaB`.

### TieneContinuidad2DCon

```csharp
public static bool TieneContinuidad2DCon(this ReadOnlyLine líneaA, ReadOnlyLine líneaB)
```

Like `TieneContinuidadCon`, but compares only X and Y.

### DistanciaMínimaExtremo

```csharp
public static double DistanciaMínimaExtremo(this ReadOnlyLine líneaA, ReadOnlyLine lineaB)
```

Returns the smallest of the four distances in the XY plane between an endpoint of `líneaA` and an endpoint of `lineaB`.

### ExtremosMásCercanos

```csharp
public static void ExtremosMásCercanos(ReadOnlyLine líneaA, ReadOnlyLine líneaB, out int vérticeA, out int vérticeB)
```

Calculates which endpoints of the two lines are nearest in the XY plane. `vérticeA` receives the endpoint index for `líneaA` and `vérticeB` the endpoint index for `líneaB`: `0` for the first vertex and `Points.Count - 1` for each line's last vertex. If several pairs have the same distance, the first pair in this order is chosen: first-first, first-last, last-first, last-last.

This method is not an extension method: call it as `UtilidadesReadOnlyLine.ExtremosMásCercanos(a, b, out var i, out var j)`.

## Example

This program creates two lines meeting at an endpoint and measures the distance from a point to the first:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;
using Digi21.Utilities;

var a = new Line(new Code("020100"));
a.Points.Add(new Point3D(0, 0, 0));
a.Points.Add(new Point3D(10, 10, 0));

var b = new Line(new Code("020100"));
b.Points.Add(new Point3D(10, 10, 5));
b.Points.Add(new Point3D(20, 10, 5));

Console.WriteLine(a.TieneContinuidadCon(b));      // False: the common endpoint has different Z values
Console.WriteLine(a.TieneContinuidad2DCon(b));    // True
Console.WriteLine(a.DistanciaMínimaExtremo(b));   // 0

UtilidadesReadOnlyLine.ExtremosMásCercanos(a, b, out var vérticeA, out var vérticeB);
Console.WriteLine($"{vérticeA} {vérticeB}");      // 1 0

// The point lies inside the box of segment 0, from (0, 0) to (10, 10).
var punto = new Point3D(2, 4, 0);
Console.WriteLine($"{a.DistanciaMínima(punto):F3}"); // 1,414
Console.WriteLine(a.SegmentoMásCercano(punto));      // 0
```
