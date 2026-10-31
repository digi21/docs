# NormalizeAngle
<!-- id: normalizeangle -->
<!-- origen: 1e859d85369f71f299c87cfc7ac95fa661ee6db2 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Maps an angle in radians to [0, 2π]. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double NormalizeAngle(this double radians)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `radians` | Angle in radians. Must be a finite number. |

## Returns

The equivalent angle from 0 to 2π radians, inclusive. A value within [0, 2π] is returned unchanged: 2π is returned as 2π, rather than 0. A value outside [0, 2π] radians is replaced by the remainder after division by 2π, with the dividend's sign (the C `fmod` function); if the remainder is negative, 2π is added. If the argument is a negative multiple of 2π, the method returns `+0`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentOutOfRangeException` | `radians` is `NaN`, `+∞` or `−∞`. |

## Example

```csharp
Console.WriteLine(Angles.NormalizeAngle(3 * Math.PI));   // π
Console.WriteLine(Angles.NormalizeAngle(-Math.PI / 2)); // 3π/2
```
