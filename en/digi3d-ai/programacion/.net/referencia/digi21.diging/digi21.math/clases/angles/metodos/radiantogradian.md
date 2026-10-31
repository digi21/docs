# RadianToGradian
<!-- id: radiantogradian -->
<!-- origen: 0b2b659b2602fc091c4180cab5672c1e377dd44d -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from radians to gradians. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double RadianToGradian(this double radian)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `radian` | Angle in radians. |

## Returns

`radian * 200 / π`. The result is not normalized.

## Example

```csharp
Console.WriteLine(Angles.RadianToGradian(Math.PI)); // 200
```
