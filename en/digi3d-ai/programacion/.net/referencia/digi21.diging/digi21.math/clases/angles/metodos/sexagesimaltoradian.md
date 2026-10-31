# SexagesimalToRadian
<!-- id: sexagesimaltoradian -->
<!-- origen: 17b04bf04ea327d9d3ef34732119434a797cb2ff -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from decimal degrees to radians. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double SexagesimalToRadian(this double sexagesimal)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `sexagesimal` | Angle in decimal degrees (for example, 30.5 for 30° 30'). To convert degrees, minutes and seconds, first use [DMSToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/dmstosexagesimal.md). |

## Returns

`sexagesimal * π / 180`. The result is not normalized.

## Example

```csharp
Console.WriteLine(Angles.SexagesimalToRadian(180.0)); // π
```
