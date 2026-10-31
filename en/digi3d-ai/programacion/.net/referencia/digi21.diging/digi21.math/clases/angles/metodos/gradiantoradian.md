# GradianToRadian
<!-- id: gradiantoradian -->
<!-- origen: c321a00bf5d98cb6f33590747b7d3a975ab40af5 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from gradians to radians. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double GradianToRadian(this double gradian)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `gradian` | Angle in gradians. |

## Returns

`gradian * π / 200`. The result is not normalized.

## Example

```csharp
Console.WriteLine(Angles.GradianToRadian(100.0)); // π/2
```
