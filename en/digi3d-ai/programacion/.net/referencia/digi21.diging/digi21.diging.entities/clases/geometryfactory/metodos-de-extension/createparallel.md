# CreateParallel
<!-- id: createparallel -->
<!-- origen: 94bda9d1e43a2393f2102e08faf33b7a24656621 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns a new [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/) parallel to a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). An extension method of [GeometryFactory](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/).

```csharp
public static Line CreateParallel(this ReadOnlyLine line, double distance)
public static Line CreateParallel(this ReadOnlyLine line, double distanceXY, double distanceZ)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `line` | Original line. Not modified. |
| `distance`, `distanceXY` | XY plane distance between the original and parallel lines. A positive value places the parallel line to the right of `line`'s direction of travel (from first to last vertex); a negative value places it to the left. |
| `distanceZ` | Value added to each parallel-line vertex's Z. |

## Return value

A new `Line` with `Owner` set to `null` (`ReadOnly` is `false`), with the codes, colors and attributes of `line` and the same vertex count. Each vertex's Z is the original vertex's Z (plus `distanceZ` in the second overload).

## Calculation

Each vertex is offset along the bisector of the two segments meeting there:

- Distance is divided by the cosine of half the turn angle between the two segments, so each parallel side is `distance` from the original side. The cosine is limited to a minimum of 0.3: for a turn greater than about 145°, the vertex is offset by at most the absolute value of `distance` divided by 0.3 (approximately 3.33 times the absolute value of `distance`), and these two parallel sides are closer to the original sides than the absolute value of `distance`.
- The first and last vertices of an open line are offset perpendicular to their segments.
- If the line is closed in X, Y and Z (first vertex equals last), the first and last vertices are calculated using the preceding and following segments, like the others.

After offsetting, loops formed by the parallel line intersecting itself are removed (the line needs at least 4 vertices for this check), and minimum and maximum coordinates are recalculated.

The original line must have at least two vertices: the method does not check this.

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `line` is `null`. |

## Example

The [GeometryFactory example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/#example) uses both overloads.
