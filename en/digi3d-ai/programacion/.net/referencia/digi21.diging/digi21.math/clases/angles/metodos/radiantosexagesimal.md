# RadianToSexagesimal
<!-- id: radiantosexagesimal -->
<!-- origen: b02167c7110bdc614d0c32bc02103884e6f55058 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Converts an angle from radians to decimal degrees. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static double RadianToSexagesimal(this double radian)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `radian` | Angle in radians. |

## Returns

`radian * 180 / π`. The result is not normalized. To obtain degrees, minutes and seconds, pass the result to [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md).

## Example

```csharp
Console.WriteLine(Angles.RadianToSexagesimal(Math.PI)); // 180
```
