# SexagesimalToRadian

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Transforma un ángulo sexagesimal a radianes.

```csharp
public static double SexagesimalToRadian(this double sexagesimal);
```

## Parámetros

`sexagesimal`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo sexagesimal para transformar.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Valor transformado en radianes.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en sexagesimal y lo muestra en radianes:

```csharp
Console.Write("Introduce un ángulo en sexagesimal: ");
var sexagesimal = double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.SexagesimalToRadian(sexagesimal)}");
```

