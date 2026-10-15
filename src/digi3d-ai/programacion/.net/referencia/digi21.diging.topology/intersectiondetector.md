# IntersectionDetector
<!-- id: digi21.diging.topology.intersectiondetector -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Detecta las intersecciones en el plano XY entre las líneas de una secuencia, o entre una línea y las de una secuencia.

```csharp
public static class IntersectionDetector
```

## Resultado

Todos los métodos devuelven un `IEnumerable<IGrouping<Point2D, SegmentPointer>>`. Cada elemento es una intersección:

- `Key` es la coordenada XY de la intersección.
- Los elementos del grupo son [SegmentPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/), uno por cada línea y segmento que pasan por esa coordenada. `Line` es la misma instancia de la secuencia de entrada. Si la intersección está en el interior del segmento, `FirstVertex` es el índice del primer vértice del segmento y `SecondVertex` el del segundo. Si la intersección coincide con un vértice de la línea, `FirstVertex` y `SecondVertex` valen el índice de ese vértice.

Dos intersecciones con la misma coordenada, con la tolerancia de [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md), forman un solo grupo. Los grupos se devuelven ordenados por X y, a igual X, por Y. Las intersecciones se calculan al llamar al método, y el resultado se puede recorrer varias veces.

Una intersección es un punto en el que se cortan dos segmentos o, si dos segmentos se superponen, cada extremo del tramo común. Las líneas eliminadas (`Deleted`) y las que tienen menos de 2 vértices no se analizan.

Para filtrar el resultado por línea y segmento, usa [UtilidadesSecuenciaIntersecciones.SoloDeSegmento](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaintersecciones.md), del paquete `Digi21.Utilities`.

## Métodos estáticos

### DetectIntersections (secuencia de líneas)

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> DetectIntersections(
    this IEnumerable<ReadOnlyLine> entities,
    Func<ReadOnlyLine, bool> analyzeIntersectionsOfThisLine,
    Func<ReadOnlyLine, ReadOnlyLine, bool> analyzeIntersectionsBetweenThisLines,
    Func<Point2D, bool> insertIntersectionInThisCoordinate)
```

Detecta las intersecciones entre todas las líneas de `entities` y las autointersecciones de cada línea (los cruces de una línea consigo misma). Hay una sobrecarga por cada combinación de los tres delegados: `DetectIntersections(entities)`, `DetectIntersections(entities, analyzeIntersectionsOfThisLine)`, `DetectIntersections(entities, analyzeIntersectionsBetweenThisLines)`, `DetectIntersections(entities, insertIntersectionInThisCoordinate)` y las de dos delegados, siempre en el orden de la firma completa. Un delegado que falta no filtra.

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Líneas que se analizan. Se recorre una sola vez. |
| `analyzeIntersectionsOfThisLine` | Se llama con cada línea de `entities`. Si devuelve `false`, la línea no se analiza. |
| `analyzeIntersectionsBetweenThisLines` | Se llama con cada pareja de líneas cuyas cajas (coordenadas mínimas y máximas en XY) se tocan. Si devuelve `false`, no se buscan intersecciones entre las dos. Para las autointersecciones se llama con la misma línea en los dos parámetros. |
| `insertIntersectionInThisCoordinate` | Se llama con la coordenada de cada intersección, una vez por cada línea que pasa por ella. Si devuelve `false`, ese `SegmentPointer` no se añade al resultado. |

Las autointersecciones solo se buscan en las líneas de más de 2 vértices. En una autointersección, el grupo contiene dos `SegmentPointer` de la misma línea, uno por cada segmento que se cruza.

### DetectIntersections (una línea)

```csharp
public static IEnumerable<IGrouping<Point2D, SegmentPointer>> DetectIntersections(
    this ReadOnlyLine line,
    IEnumerable<ReadOnlyLine> entities,
    Func<ReadOnlyLine, bool> analyzeIntersectionsWithThisLine,
    Func<Point2D, bool> insertIntersectionInThisCoordinate)
```

Detecta las intersecciones de `line` con las líneas de `entities`. Hay sobrecargas sin delegados, solo con `analyzeIntersectionsWithThisLine` y solo con `insertIntersectionInThisCoordinate`.

| Parámetro | Descripción |
| :--- | :--- |
| `line` | Línea que se analiza. No se buscan sus autointersecciones. |
| `entities` | Líneas con las que se cruza `line`. Se omite `line` si está en la secuencia (la misma instancia) y cada línea cuya caja no toca la de `line`. |
| `analyzeIntersectionsWithThisLine` | Se llama con cada línea de `entities` cuya caja toca la de `line`. Si devuelve `false`, la línea no se analiza. |
| `insertIntersectionInThisCoordinate` | Se llama con la coordenada de cada intersección. Si devuelve `false`, la intersección no se añade al resultado. |

Por cada intersección se añaden dos `SegmentPointer`: uno de `line` y otro de la línea de `entities` que la corta. Si varias líneas cortan a `line` en la misma coordenada, el grupo de esa coordenada contiene los `SegmentPointer` de todas.

## Ejemplo

Este programa busca los cruces entre las líneas no eliminadas de un archivo `.bin`, sin las autointersecciones, y muestra las líneas que se cruzan en cada punto:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Cruces <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
var líneas = archivo.OfType<ReadOnlyLine>().ToList();

var cruces = líneas.DetectIntersections(
    analyzeIntersectionsBetweenThisLines: (a, b) => !ReferenceEquals(a, b));

foreach (var cruce in cruces)
{
    var segmentos = cruce.Select(s => $"línea {líneas.IndexOf(s.Line)}, vértices {s.FirstVertex}-{s.SecondVertex}");
    Console.WriteLine($"({cruce.Key.X:F2}, {cruce.Key.Y:F2}): {string.Join("; ", segmentos)}");
}

return 0;
```
