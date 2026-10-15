# Angles
<!-- id: angles -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Conversión entre radianes, grados sexagesimales y grados centesimales; entre azimutes y ángulos trigonométricos; entre grados decimales y grados, minutos y segundos; y entre giros omega, phi y kappa y su matriz de giro.

```csharp
public static class Angles
```

Términos de esta página:

- Grado sexagesimal: 1/360 de circunferencia. Grado centesimal: 1/400 de circunferencia.
- Azimut: ángulo desde el norte (eje Y positivo), en el sentido de las agujas del reloj.
- Ángulo trigonométrico: ángulo desde el este (eje X positivo), en sentido contrario a las agujas del reloj.

El paquete NuGet `Digi21.DigiNG` declara los métodos con un solo parámetro de entrada como métodos de extensión de `double` (`this double`), y `MatrixToRotations` como método de extensión de `double[,]`. El ensamblado instalado con Digi3D.AI no los marca como métodos de extensión. Un programa compilado con el paquete funciona con las dos formas de llamada; las páginas usan la llamada estática (`Angles.RadianToGradian(x)`), que compila también con el ensamblado instalado.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [RadianToGradian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/radiantogradian.md) | Radianes a grados centesimales. |
| [GradianToRadian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/gradiantoradian.md) | Grados centesimales a radianes. |
| [RadianToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/radiantosexagesimal.md) | Radianes a grados sexagesimales. |
| [SexagesimalToRadian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltoradian.md) | Grados sexagesimales a radianes. |
| [GradianToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/gradiantosexagesimal.md) | Grados centesimales a grados sexagesimales. |
| [SexagesimalToGradian](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltogradian.md) | Grados sexagesimales a grados centesimales. |
| [AzimuthToTrigonometric](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/azimuthtotrigonometric.md) | Azimut a ángulo trigonométrico, en radianes. |
| [TrigonometricToAzimuth](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/trigonometrictoazimuth.md) | Ángulo trigonométrico a azimut, en radianes. |
| [NormalizeAngle](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/normalizeangle.md) | Lleva un ángulo en radianes al intervalo [0, 2π]. |
| [SexagesimalToDMS](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/sexagesimaltodms.md) | Grados sexagesimales decimales a grados, minutos, segundos y signo. |
| [DMSToSexagesimal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/dmstosexagesimal.md) | Grados, minutos, segundos y signo a grados sexagesimales decimales. |
| [RotationsToMatrix](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/rotationstomatrix.md) | Giros omega, phi y kappa a matriz de giro de 3 × 3. |
| [MatrixToRotations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/angles/metodos/matrixtorotations.md) | Matriz de giro de 3 × 3 a giros omega, phi y kappa. |

Ningún método lanza excepciones por el valor de los ángulos: un argumento `NaN` produce un resultado `NaN`. `NormalizeAngle`, `AzimuthToTrigonometric` y `TrigonometricToAzimuth` suman o restan 2π en un bucle hasta llevar el ángulo al intervalo [0, 2π]: con un ángulo infinito el bucle no termina, y con un ángulo de valor absoluto muy grande (del orden de 10¹⁵ radianes) tarda horas.

## Ejemplo

Este programa recibe un azimut en grados sexagesimales y lo muestra en grados, minutos y segundos, en grados centesimales y como ángulo trigonométrico:

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
