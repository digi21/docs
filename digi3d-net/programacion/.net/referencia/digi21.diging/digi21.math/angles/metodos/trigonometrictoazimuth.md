# TrigonometricToAzimuth

Espacio de nombres: [Digi21.Math](../../)  
Ensamblado: [Digi21.DigiNG](../../../)

Transforma un ángulo trigonométrico a azimutal.

```csharp
public static double TrigonometricToAzimuth(this double radians);
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
Console.Write("Introduce un ángulo trigonométrico en sexagesimal: ");
var trigonométrico = double.Parse(Console.Read());

var trigonométricoRadianes = Angles.SexagesimalToRadian(trigonométrico);
var azimutalRadianes = Angles.TrigonometricToAzimuth(trigonométricoRadianes);
var asimutalSexagesimal = Angles.RadianToSexagesimal(azimutalRadianes));

Console.WriteLine($"Ángulo azimutal: {trigonometricoSexagesimal}");
```

## Observaciones

Este método recibe y devuelve ángulos en radianes.

