# SexagesimalToDMS
<!-- id: sexagesimaltodms -->
<!-- origen: 5b6af2bc6d003b5179aa12a3faf9f5ef72db430a -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Splits an angle in decimal degrees into degrees, minutes, seconds and sign. Method of [Angles](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/).

```csharp
public static void SexagesimalToDMS(this double sexagesimal, out int degrees, out int minutes, out double seconds, out bool east)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `sexagesimal` | Angle in decimal degrees. |
| `degrees` | Integer part of \|`sexagesimal`\|. |
| `minutes` | Integer minutes of \|`sexagesimal`\|, from 0 to 59. |
| `seconds` | Remaining seconds, including a decimal fraction. |
| `east` | `true` if `sexagesimal` is greater than 0. With `sexagesimal` equal to 0, it is `false`. |

`degrees`, `minutes` and `seconds` are always positive or 0: the sign is returned in `east`. For longitude, `true` means east; for latitude, north.

Rounding error in the decimal fraction affects seconds: when converting 3.7025°, the method assigns `seconds` a value of 8.99999… seconds instead of 9 seconds. Round `seconds` to the number of decimal places you intend to display.

## Example

```csharp
Angles.SexagesimalToDMS(-3.7025, out var grados, out var minutos, out var segundos, out var positivo);
// grados = 3, minutos = 42, segundos ≈ 9, positivo = false
Console.WriteLine($"{grados} {minutos} {segundos} {positivo}");
```
