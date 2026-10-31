# AzimuthToTrigonometric
<!-- id: azimuthtotrigonometric -->
<!-- origen: 1d2391f2481cb478cc74209d23591c32e3375a7a -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an azimuth (clockwise angle from north) to a trigonometric angle (counterclockwise angle from east). Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double AzimuthToTrigonometric(this double radians)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `radians` | Azimuth in radians. |

## Returns

Trigonometric angle in radians: `5π/2 − radians`, normalized to [0, 2π] radians (both endpoints included), using the same calculation as [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md). Unlike `NormalizeAngle`, this method does not throw exceptions: a `NaN` argument returns `NaN`; `+∞` returns `−∞`; and `−∞` returns `+∞`.

## Example

```csharp
// Azimuth of 30° (clockwise from north): trigonometric angle of 60°.
var trigonometrico = Angles.AzimuthToTrigonometric(Angles.SexagesimalToRadian(30.0));
Console.WriteLine(Angles.RadianToSexagesimal(trigonometrico)); // ≈ 60
```
