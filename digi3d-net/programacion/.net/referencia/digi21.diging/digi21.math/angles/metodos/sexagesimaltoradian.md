# SexagesimalToRadian

Transforma un ángulo sexagesimal a radianes.

```csharp
public static double SexagesimalToRadian(double sexagesimal);
```

## Parámetros

`sexagesimal`  
Ángulo sexagesimal para transformar.

## Devuelve

Valor transformado en radianes.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en sexagesimal y lo muestra en radianes:

```csharp
Console.Write("Introduce un ángulo en sexagesimal: ");
var sexagesimal = double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.SexagesimalToRadian(sexagesimal)}");
```

