# TrigonometricToAzimuth

Transforma un ángulo trigonométrico a azimutal.

```csharp
public static double TrigonometricToAzimuth(double radians);
```

## Parámetros

`radians`  
Ángulo en radianes a transformar.

## Devuelve

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

