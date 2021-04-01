# RadianToGradian

Transforma un ángulo radián a centesimal.

```csharp
public static double RadianToGradian(double radian);
```

## Parámetros

`radian`  
Ángulo en radianes a transformar.

## Devuelve

Valor transformado en centesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en radianes y lo muestra en centesimal:

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var radianes= double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.RadianToGradian(radianes)}");
```

