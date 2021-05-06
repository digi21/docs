# SexagesimalToDMS

Espacio de nombres: [Digi21.Math](../../../)  
Ensamblado: [Digi21.DigiNG](../../../../)

Extrae Grados, Minutos, Segundos a partir de una fracción decimal.

```csharp
public static void SexagesimalToDMS(this double sexagesimal, out int degrees, out int minutes, out double seconds, out bool east);
```

## Parámetros

`sexagesimal`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Ángulo en sexagesimal a partir del cual se calculará el resto de parámetros.

`degrees`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se almacenarán los grados.

`minutes`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se almacenarán los minutos.

`seconds`[Double](https://docs.microsoft.com/en-us/dotnet/api/system.double?view=net-5.0)  
Parámetro de salida en el que se almacenarán los segundos.

`east`[Boolean](https://docs.microsoft.com/en-us/dotnet/api/system.boolean?view=net-5.0)  
Parámetro de salida en el que se almacenará un verdadero si el ángulo original era positivo y por lo tanto si es longitud está al este y si es latitud estará al norte.

## Devuelve

Este método no devuelve ningún valor.

## Ejemplos

El siguiente ejemplo solicita al usuario una posición de latitud y muestra en la consola el valor calculado:

```csharp
Console.Write("Latitud: ");
var latitud = double.Parse(Console.ReadLine());

Angles.SexagesimalToDMS(latitud, out var grados, out var minutos, out var segundos, out var norte);

Console.WriteLine($"Grados: {grado}");
Console.WriteLine($"Minutos: {minutos}");
Console.WriteLine($"Segundos: {segundos}");
Console.WriteLine(norte ? "Norte" : "Sur");
```

