# RadianToGradian

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Transforma un ángulo radián a centesimal.

```csharp
public static double RadianToGradian(double radian);
```

## Parámetros

`radian`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en radianes a transformar.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Valor transformado en centesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en radianes y lo muestra en centesimal:

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var radianes= double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.RadianToGradian(radianes)}");
```

