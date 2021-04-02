# RotationsToMatrix

Crea una matriz de Euler a partir de ángulos Omega, Phi, Kappa.

```csharp
public static void RotationsToMatrix(double omega, double phi, double kappa, out double[,] eulerMatrix);
```

## Parámetros

`omega`  
Ángulo _Omega_ en radianes.

`phi`  
Ángulo _Phi_ en radianes.

`kappa`  
Ángulo _Kappa_ en radianes.

`eulerMatrix`  
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



