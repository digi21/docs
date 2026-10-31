# SexagesimalToGradian
<!-- id: sexagesimaltogradian -->
<!-- origen: 4cbdc45495760dc09cd76cfb00c973fcb2c83d2b -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from decimal degrees to gradians. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double SexagesimalToGradian(this double sexagesimal)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `sexagesimal` | Angle in decimal degrees. |

## Returns

Angle in gradians: `sexagesimal * 200 / 180`, calculated via radians. The result is not normalized.

## Example

```csharp
Console.WriteLine(Angles.SexagesimalToGradian(90.0)); // 100
```
