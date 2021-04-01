# RadianToSexagesimal

Transforma un ángulo radián a sexagesimal.

```csharp
public static double RadianToSexagesimal(double radian);
```

## Parámetros

`radian`  
Ángulo en radianes a transformar.

## Devuelve

Valor transformado en sexagesimal.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en radianes y lo muestra en sexagesimal:

```csharp
Console.Write("Introduce un ángulo en radianes: ");
var radianes= double.Parse(Console.Read());

Console.WriteLine($"Centesimal: {Angles.RadianToSexagesimal(radianes)}");
```

