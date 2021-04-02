# AzimuthToTrigonometric

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Transforma un ángulo azimutal a trigonométrico.

```csharp
public static double AzimuthToTrigonometric(double radians);
```

## Parámetros

`radians`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en radianes a transformar.

## Devuelve

[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Valor transformado en radianes.

## Ejemplos

El siguiente ejemplo solicita al usuario un ángulo en sexagesimal. El programa lo transforma a radianes se llama a este método y se vuelve a transformar a sexagesimal para mostrarlo por la consola:

```csharp
Console.Write("Introduce un azimut en sexagesimal: ");
var azimut = double.Parse(Console.Read());

var azimutRadianes = Angles.SexagesimalToRadian(azimut);
var trigonometricoRadianes = Angles.AzimuthToTrigonometric(azimutRadianes);
var trigonometricoSexagesimal = Angles.RadianToSexagesimal(trigonometricoRadianes);

Console.WriteLine($"Ángulo trigonométrico: {trigonometricoSexagesimal}");
```

## Observaciones

Este método recibe y devuelve ángulos en radianes.

