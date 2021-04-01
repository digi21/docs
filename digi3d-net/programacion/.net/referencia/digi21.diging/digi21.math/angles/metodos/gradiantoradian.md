# GradianToRadian

Transforma un ángulo centesimal a radián.

```csharp
public static double GradianToRadian(double gradian);
```

## Parámetros

`gradian`  
Ángulo en centesimal a transformar.

## Devuelve

Valor transformado en radianes.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en centesimal y lo muestra en radianes:

```csharp
Console.Write("Introduce un ángulo en centesimal: ");
var centesimal = double.Parse(Console.Read());

Console.WriteLine($"Radianes: {Angles.GradianToRadian(centesimal))}");
```



