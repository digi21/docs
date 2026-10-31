# Angles
<!-- id: angles -->
<!-- origen: 8b7243d508ae876837b025ff4a12803a6e0d8ef7 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Conversion between radians, degrees and gradians; between azimuths and trigonometric angles; between decimal degrees and degrees, minutes and seconds; and between omega, phi and kappa rotations and their rotation matrix.

```csharp
public static class Angles
```

Terms used on this page:

- Degree: 1/360 of a full circle. Gradian: 1/400 of a full circle.
- Azimuth: clockwise angle from north (positive Y axis).
- Trigonometric angle: counterclockwise angle from east (positive X axis).

Methods with a single input parameter are `double` extension methods (`this double`), and `MatrixToRotations` is an extension method of `double[,]`: `x.RadianToGradian()` is equivalent to `Angles.RadianToGradian(x)`. `DMSToSexagesimal` and `RotationsToMatrix` are not extension methods. These pages use static calls.

## Static methods

| Method | Description |
| :--- | :--- |
| [RadianToGradian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/radiantogradian.md) | Radians to gradians. |
| [GradianToRadian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/gradiantoradian.md) | Gradians to radians. |
| [RadianToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/radiantosexagesimal.md) | Radians to degrees. |
| [SexagesimalToRadian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltoradian.md) | Degrees to radians. |
| [GradianToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/gradiantosexagesimal.md) | Gradians to degrees. |
| [SexagesimalToGradian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltogradian.md) | Degrees to gradians. |
| [AzimuthToTrigonometric](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/azimuthtotrigonometric.md) | Azimuth to trigonometric angle, in radians. |
| [TrigonometricToAzimuth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/trigonometrictoazimuth.md) | Trigonometric angle to azimuth, in radians. |
| [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md) | Maps an angle in radians to [0, 2π]. |
| [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md) | Decimal degrees to degrees, minutes, seconds and sign. |
| [DMSToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/dmstosexagesimal.md) | Degrees, minutes, seconds and sign to decimal degrees. |
| [RotationsToMatrix](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/rotationstomatrix.md) | Omega, phi and kappa rotations to a 3 × 3 rotation matrix. |
| [MatrixToRotations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/matrixtorotations.md) | A 3 × 3 rotation matrix to omega, phi and kappa rotations. |

Only `NormalizeAngle` throws exceptions for the angle value: `ArgumentOutOfRangeException` for `NaN` or infinity. In the other methods, a `NaN` argument produces a `NaN` result.

## Example

This program takes an azimuth in degrees and displays it in degrees, minutes and seconds, in gradians and as a trigonometric angle:

```csharp
using System.Globalization;
using Digi21.Math;

if (args.Length != 1 || !double.TryParse(args[0], NumberStyles.Float, CultureInfo.InvariantCulture, out var azimutGrados))
{
    Console.WriteLine("Uso: Angulos <azimut en grados sexagesimales>");
    return 1;
}

var azimut = Angles.SexagesimalToRadian(azimutGrados);
var trigonometrico = Angles.AzimuthToTrigonometric(azimut);

Angles.SexagesimalToDMS(azimutGrados, out var grados, out var minutos, out var segundos, out var positivo);
Console.WriteLine($"Azimut: {(positivo ? "" : "-")}{grados}° {minutos}' {segundos:F3}\"");
Console.WriteLine($"Azimut: {Angles.RadianToGradian(azimut):F4} grados centesimales");
Console.WriteLine($"Ángulo trigonométrico: {Angles.RadianToSexagesimal(trigonometrico):F4}°");
return 0;
```
