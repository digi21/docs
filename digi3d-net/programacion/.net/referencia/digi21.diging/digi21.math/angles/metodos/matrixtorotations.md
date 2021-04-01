# MatrixToRotations

Extrae ángulos Omega, Phi y Kappa de una matriz de Euler.

```csharp
public static void MatrixToRotations(double[,] eulerMatrix, out double omega, out double phi, out double kappa);
```

## Parámetros

`eulerMatrix`  
Matriz de Euler de la cual extraer los ángulos.

`omega`  
Parámetro de salida en el que se asignará el ángulo _Omega_ en radianes.

`phi`  
Parámetro de salida en el que se asignará el ángulo _Phi_ en radianes.

`kappa`  
Parámetro de salida en el que se asignará el ángulo _Kappa_ en radianes.

## Ejemplos

El siguiente ejemplo solicita al usuario tres ángulos \(omega, phi y kappa\), crea una matriz de Euler y luego extrae estos ángulos y los imprime en la consola.

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var valor = double.Parse(Console.Read());

Console.WriteLine($"Sexagesimal: {Angles.GradianToSexagesimal(valor))}");
```



