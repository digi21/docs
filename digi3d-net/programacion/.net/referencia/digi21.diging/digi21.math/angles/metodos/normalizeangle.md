# NormalizeAngle

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Normaliza un ángulo entre 0 y 2π.

```csharp
public static double NormalizeAngle(double radians);
```

## Parámetros

`radians`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en radianes a normalizar.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en el rango \[0, 2π\].

## Ejemplos

El siguiente ejemplo imprime el resultado de normalizar el ángulo 3π:

```csharp
Console.WriteLine(Angles.NormalizeAngle(3*π));
```

