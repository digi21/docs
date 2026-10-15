# UtilidadesReadOnlyLine
<!-- id: digi21.utilities.utilidadesreadonlyline -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Métodos de extensión de [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) para medir distancias y comprobar si dos líneas se tocan por sus extremos.

```csharp
public static class UtilidadesReadOnlyLine
```

Todos los cálculos de distancia se hacen en el plano XY: la coordenada Z no interviene. Las comparaciones de coordenadas usan la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md).

## Métodos estáticos

### DistanciaMínima

```csharp
public static double DistanciaMínima(this ReadOnlyLine línea, Point3D punto)
```

Devuelve la menor distancia en el plano XY entre `punto` y la recta que pasa por cada segmento de la línea. Solo se tienen en cuenta los segmentos cuya caja (el rectángulo que forman sus dos vértices en XY) contiene `punto`.

Lanza `Exception` con el mensaje «El punto no intersecciona con la línea» si `punto` no está en la caja de ningún segmento.

### SegmentoMásCercano

```csharp
public static int SegmentoMásCercano(this ReadOnlyLine línea, Point3D punto)
```

Devuelve el índice del segmento que da la distancia de `DistanciaMínima`. El segmento `i` une los vértices `i` e `i + 1`. Si dos segmentos dan la misma distancia, devuelve el de índice menor. Lanza la misma excepción que `DistanciaMínima`.

### TieneContinuidadCon

```csharp
public static bool TieneContinuidadCon(this ReadOnlyLine líneaA, ReadOnlyLine líneaB)
```

Devuelve `true` si algún extremo de `líneaA` (primer o último vértice) coincide en X, Y y Z con algún extremo de `líneaB`.

### TieneContinuidad2DCon

```csharp
public static bool TieneContinuidad2DCon(this ReadOnlyLine líneaA, ReadOnlyLine líneaB)
```

Igual que `TieneContinuidadCon`, pero compara solo X e Y.

### DistanciaMínimaExtremo

```csharp
public static double DistanciaMínimaExtremo(this ReadOnlyLine líneaA, ReadOnlyLine lineaB)
```

Devuelve la menor de las cuatro distancias en el plano XY entre un extremo de `líneaA` y un extremo de `lineaB`.

### ExtremosMásCercanos

```csharp
public static void ExtremosMásCercanos(ReadOnlyLine líneaA, ReadOnlyLine líneaB, out int vérticeA, out int vérticeB)
```

Calcula qué extremos de las dos líneas están más cerca en el plano XY. `vérticeA` y `vérticeB` reciben el índice del vértice: `0` para el primer vértice y `Points.Count - 1` para el último. Si varias parejas están a la misma distancia, gana la primera en este orden: primero-primero, primero-último, último-primero, último-último.

Este método no es un método de extensión: se llama como `UtilidadesReadOnlyLine.ExtremosMásCercanos(a, b, out var i, out var j)`.

## Ejemplo

Este programa crea dos líneas que se tocan por un extremo y mide la distancia de un punto a la primera:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.Math;
using Digi21.Utilities;

var a = new Line(new Code("020100"));
a.Points.Add(new Point3D(0, 0, 0));
a.Points.Add(new Point3D(10, 10, 0));

var b = new Line(new Code("020100"));
b.Points.Add(new Point3D(10, 10, 5));
b.Points.Add(new Point3D(20, 10, 5));

Console.WriteLine(a.TieneContinuidadCon(b));      // False: la Z del extremo común es distinta
Console.WriteLine(a.TieneContinuidad2DCon(b));    // True
Console.WriteLine(a.DistanciaMínimaExtremo(b));   // 0

UtilidadesReadOnlyLine.ExtremosMásCercanos(a, b, out var vérticeA, out var vérticeB);
Console.WriteLine($"{vérticeA} {vérticeB}");      // 1 0

// El punto está dentro de la caja del segmento 0, que va de (0, 0) a (10, 10).
var punto = new Point3D(2, 4, 0);
Console.WriteLine($"{a.DistanciaMínima(punto):F3}"); // 1,414
Console.WriteLine(a.SegmentoMásCercano(punto));      // 0
```
