# RotationsToMatrix

Espacio de nombres: [Digi21.Math](/digi3d-net/programacion/.net/referencia/digi21.diging/digi21.math/)  
Ensamblado: [Digi21.DigiNG](/digi3d-net/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Crea una matriz de Euler a partir de ángulos Omega, Phi, Kappa.

```csharp
public static void RotationsToMatrix(double omega, double phi, double kappa, out double[,] eulerMatrix);
```

## Parámetros

`omega`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo _Omega_ en radianes.

`phi`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo _Phi_ en radianes.

`kappa`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo _Kappa_ en radianes.

`eulerMatrix`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se almacenará la matriz de Euler.

## Ejemplos

El siguiente ejemplo solicita al usuario tres ángulos \(omega, phi y kappa\), crea una matriz de Euler y luego extrae estos ángulos y los imprime en la consola.

```csharp
Console.Write("Omega: ");
var omega = double.Parse(Console.Read());

Console.Write("Phi: ");
var phi = double.Parse(Console.Read());

Console.Write("Kappa: ");
var kappa = double.Parse(Console.Read());

Angles.RotationsToMatrix(
    Angles.SexagesimalToRadian(omega),
    Angles.SexagesimalToRadian(phi),
    Angles.SexagesimalToRadian(kappa),
    out var euler);

Angles.MatrixToRotations(
    euler,
    out omega,
    out phi,
    out kappa);

Console.WriteLine($"Omega: {Angles.RadianToSexagesimal(omega)}");
Console.WriteLine($"Phi: {Angles.RadianToSexagesimal(phi)}");
Console.WriteLine($"Kappa: {Angles.RadianToSexagesimal(kappa)}");
```

