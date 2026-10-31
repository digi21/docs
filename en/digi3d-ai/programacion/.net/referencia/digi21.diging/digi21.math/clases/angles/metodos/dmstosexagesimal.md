# DMSToSexagesimal
<!-- id: dmstosexagesimal -->
<!-- origen: 0581855e472e9cb97eda53ef65c50d2ad25b8510 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Combines degrees, minutes, seconds and sign into an angle in decimal degrees. This is the inverse of [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md). Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void DMSToSexagesimal(int degrees, int minutes, double seconds, bool east, out double sexagesimal)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `degrees` | Degrees. |
| `minutes` | Minutes. |
| `seconds` | Seconds, including a decimal fraction. |
| `east` | `true` for a positive angle (east or north); `false` for a negative angle (west or south). |
| `sexagesimal` | Result: `degrees + minutes / 60 + seconds / 3600`, with a negative sign if `east` is `false`. |

The method does not check ranges: `minutes` values above 59 minutes and `seconds` values above 59 seconds are also included in the calculation. Pass `degrees`, `minutes` and `seconds` unsigned: with `east` set to `false`, a negative `degrees` becomes positive, and the degree term in `sexagesimal` is positive instead of negative.

## Example

```csharp
Angles.DMSToSexagesimal(3, 42, 9.0, false, out var sexagesimal);
Console.WriteLine(sexagesimal); // ≈ -3.7025
```
