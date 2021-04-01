# GradianToSexagesimal

Transforma un ángulo centesimal a sexagesimal.

```csharp
public static double GradianToSexagesimal(double radian);
```

## Parámetros

`gradian`  
Ángulo en radianes a transformar.

## Devuelve

Valor transformado en sexagesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en centesimal y lo muestra en radianes:

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var valor = double.Parse(Console.Read());

Console.WriteLine($"Sexagesimal: {Angles.GradianToSexagesimal(valor)}");
```

