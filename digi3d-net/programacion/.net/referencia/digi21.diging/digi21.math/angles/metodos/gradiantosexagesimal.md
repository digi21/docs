# GradianToSexagesimal

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Transforma un ángulo centesimal a sexagesimal.

```csharp
public static double GradianToSexagesimal(double radian);
```

## Parámetros

`gradian`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en radianes a transformar.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Valor transformado en sexagesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en centesimal y lo muestra en radianes:

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var valor = double.Parse(Console.Read());

Console.WriteLine($"Sexagesimal: {Angles.GradianToSexagesimal(valor)}");
```

