# Segment
<!-- id: segment -->
<!-- origen: 39208fd17fcdaf225ba622360e4b84bfa313b06e -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Segment between two [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) values, the origin and destination.

```csharp
public struct Segment
```

`Segment` is a value type. The `FirstSegment` and `LastSegment` properties of [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) return the first and last segments of a line.

The `AnalyzeRelation`, `AnalyzeRelationPlaneXY`, `Distance`, `Distance2D`, `Perpendicular`, `Intersection` and `InterpolatedZ` methods work with the infinite line through the origin and destination, rather than the segment: results may fall outside the segment.

## Constructors

```csharp
public Segment(Point3D origin, Point3D destination)
```

Creates the segment from `origin` to `destination`. The structure's parameterless constructor creates a segment with both endpoints at (0, 0, 0).

## Properties

| Property | Description |
| :--- | :--- |
| `Point3D Origin { get; set; }` | Segment origin. |
| `Point3D Destination { get; set; }` | Segment destination. |
| `Point3D DirectionVector { get; }` | Unnormalized `Destination - Origin` vector. |
| `Window3D Window { get; }` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) with both endpoints' minimum and maximum coordinates. |

## Methods

| Method | Description |
| :--- | :--- |
| `double Distance(Point3D point)` | Distance in space from `point` to the infinite line. If the origin and destination are equal according to [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md), returns the distance between `point` and the origin. |
| `double Distance2D(Point3D point)` | Like `Distance`, but in the X, Y plane: ignores Z coordinates. |
| `Point3D Perpendicular(Point3D point)` | Foot of the perpendicular from `point` to the infinite line in the X, Y plane. The result's Z is the line's Z at that point. If the origin and destination have the same X and Y, returns the origin. |
| `double InterpolatedZ(Point2D point)` | Z of the infinite line, linearly interpolated using the X of `point`. If the origin and destination have the same X according to `Precision.Epsilon`, interpolation uses Y; if Y is also the same, returns the origin's Z. Does not check whether `point` lies on the line. |

## Static methods

| Method | Description |
| :--- | :--- |
| `SegmentRelation AnalyzeRelation(Segment a, Segment b)` | Relative position of the two infinite lines in space: `Crossed`, `Cutted`, `Paralel` or `Coincident`. Read [SegmentRelation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/enumeraciones/segmentrelation.md). |
| `SegmentRelation AnalyzeRelationPlaneXY(Segment a, Segment b)` | Relative position of both infinite lines' projections in the X, Y plane: `Cutted`, `Paralel` or `Coincident`. |
| `Point3D Intersection(Segment a, Segment b)` | Intersection of the two infinite lines in the X, Y plane. The result's Z is interpolated on the line of `a`, as in `InterpolatedZ`. Throws `InvalidOperationException` if the lines are parallel or coincident in the X, Y plane. |
| `double CalculateAngle(Segment a, Segment b)` | Angle between the X, Y plane projections of the direction vectors of `a` and `b`, in radians, from 0 to π. Returns `NaN` if either segment has length 0 in the X, Y plane. |

`AnalyzeRelation` and `AnalyzeRelationPlaneXY` calculate matrix ranks using the direction vectors and the vector connecting the two origins, and compare determinants with 0 without tolerance. A segment whose origin equals its destination is classified as `Paralel` or `Coincident`.

## Example

This program analyzes two segments whose infinite lines are skew in space and intersect in the X, Y plane:

```csharp
using Digi21.Math;

var a = new Segment(new Point3D(0.0, 0.0, 100.0), new Point3D(10.0, 10.0, 110.0));
var b = new Segment(new Point3D(0.0, 10.0, 0.0), new Point3D(10.0, 0.0, 0.0));

// In space the lines do not meet; in the X, Y plane they intersect.
Console.WriteLine(Segment.AnalyzeRelation(a, b));        // Crossed
Console.WriteLine(Segment.AnalyzeRelationPlaneXY(a, b)); // Cutted

if (Segment.AnalyzeRelationPlaneXY(a, b) == SegmentRelation.Cutted)
{
    // Intersection in the X, Y plane; Z is interpolated on segment a.
    var corte = Segment.Intersection(a, b);
    Console.WriteLine(corte);                            // ≈ (5, 5, 105)
}

var ángulo = Segment.CalculateAngle(a, b);
Console.WriteLine(Angles.RadianToSexagesimal(ángulo));   // ≈ 90

var punto = new Point3D(10.0, 0.0, 0.0);
Console.WriteLine(a.Distance2D(punto));                  // ≈ 7.071
Console.WriteLine(a.Perpendicular(punto));               // (5,5,105)
Console.WriteLine(a.InterpolatedZ(new Point2D(2.0, 2.0))); // 102
```
