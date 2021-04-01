# SexagesimalToGradian

Transforma un ángulo sexagesimal a centesimal.

```csharp
public static double SexagesimalToGradian(double sexagesimal);
```

## Parámetros

`sexagesimal`  
Ángulo sexagesimal para transformar.

## Devuelve

Valor transformado en centesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo sexagesimal y lo muestra en centesimal:

```csharp
Console.Write("Introduce un ángulo en sexagesimal: ");
var sexagesimal = double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.SexagesimalToGradian(sexagesimal)}");
```

