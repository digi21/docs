# MatrixToRotations

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Extrae ángulos Omega, Phi y Kappa de una matriz de Euler.

```csharp
public static void MatrixToRotations(double[,] eulerMatrix, out double omega, out double phi, out double kappa);
```

## Parámetros

`eulerMatrix`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Matriz de Euler de la cual extraer los ángulos.

`omega`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se asignará el ángulo _Omega_ en radianes.

`phi`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se asignará el ángulo _Phi_ en radianes.

`kappa`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se asignará el ángulo _Kappa_ en radianes.

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

