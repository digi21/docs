# DMSToSexagesimal

Transforma grados minutos y segundos a fracción decimal.

```csharp
public static void DMSToSexagesimal(int degrees, int minutes, double seconds, bool east, out double sexagesimal);
```

## Parámetros

`degrees`  
Número entero representando los grados.

`minutes`  
Número entero representando los minutos.

`seconds`  
Número real representando los segundos.

`east`  
Booleano que indica si la coordenada está en el Este/Norte \(verdadero\) u Oeste/Sur \(falso\).

`sexagesimal`  
En este parámetro de tipo `out` se asignará el valor calculado.

## Devuelve

Este método no devuelve ningún valor.

## Ejemplos

El siguiente ejemplo solicita al usuario una posición de latitud y muestra en la consola el valor calculado:

```csharp
Console.Write("Grado (negativo si es Oeste/Sur): ");
var grado = int.Parse(Console.ReadLine());

Console.Write("Minuto: ");
var minuto = int.Parse(Console.ReadLine());

Console.Write("Segundo: ");
var segundo = double.Parse(Console.ReadLine());

Angles.DMSToSexagesimal(Math.Abs(grado), minuto, segundo, grado<0, var out resultado);
Console.WriteLine($"Valor calculado: {resultado}");
```

## Observaciones

El valor del ángulo si se está representando una longitud será entre -180 y 180. Si se está representando una latitud será entre -90 y 90.

