# GradianToSexagesimal
<!-- id: gradiantosexagesimal -->
<!-- origen: c19fcc4286b0a63fda77a519b83675299264295c -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from gradians to decimal degrees. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double GradianToSexagesimal(this double gradian)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `gradian` | Angle in gradians. |

## Returns

Angle in degrees: `gradian * 180 / 200`, calculated via radians. The result is not normalized.

## Example

```csharp
Console.WriteLine(Angles.GradianToSexagesimal(100.0)); // 90
```
