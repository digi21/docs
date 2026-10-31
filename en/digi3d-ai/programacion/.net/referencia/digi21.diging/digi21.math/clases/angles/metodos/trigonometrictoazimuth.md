# TrigonometricToAzimuth
<!-- id: trigonometrictoazimuth -->
<!-- origen: eca6a5843c13b8459c925b81aa08e303dc0d98fe -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts a trigonometric angle (counterclockwise angle from east) to an azimuth (clockwise angle from north). Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double TrigonometricToAzimuth(this double radians)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `radians` | Trigonometric angle in radians. |

## Returns

Azimuth in radians: `π/2 − radians`, normalized to [0, 2π] radians (both endpoints included), using the same calculation as [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md). Unlike `NormalizeAngle`, this method does not throw exceptions: a `NaN` argument returns `NaN`; `+∞` returns `−∞`; and `−∞` returns `+∞`.

## Example

```csharp
// Trigonometric angle of 0° (X axis): azimuth of 90°.
var azimut = Angles.TrigonometricToAzimuth(0.0);
Console.WriteLine(Angles.RadianToSexagesimal(azimut)); // ≈ 90
```
