# ClosedLoop
<!-- id: digi21.diging.topology.closedloop -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Anillo cerrado que forman una o varias líneas de una topología. [TopologyAnalyzer.AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) devuelve los polígonos como [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md), que hereda de esta clase, y los huecos de cada polígono como `ClosedLoop`.

```csharp
public class ClosedLoop
```

## Constructores

```csharp
public ClosedLoop()
```

Crea un anillo vacío: `Polygon` y `Centroid` valen `null` y `Entities` es una lista vacía. Los anillos con datos los crea `TopologyAnalyzer.AnalyzeTopology`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `Polygon Polygon` | [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) nuevo con los vértices del anillo. Tiene un solo código, de nombre vacío (`""`), y no pertenece a ningún archivo de dibujo. En un `ClosedLoopWithHoles`, el polígono incluye también los huecos. |
| `ReadOnlyText Centroid` | Texto asignado como centroide por `TopologyAnalyzer.AnalyzeCentroids`, o `null`. Después de `AnalyzeTopology` vale `null`. |
| `List<Tuple<ReadOnlyLine, bool>> Entities` | Líneas (arcos) que forman el anillo, en el orden en que se recorren. `Item1` es la línea, la misma instancia que se pasó a `AnalyzeTopology`. `Item2` es `true` si el anillo recorre la línea desde el primer vértice hasta el último y `false` si la recorre al revés. |

## Ejemplo

Este programa forma la topología de un archivo `.bin` y muestra las líneas que forman cada polígono y el sentido en que se recorren:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Arcos <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

foreach (var polígono in archivo.AnalyzeTopology(analyzePolygonRelationship: false))
{
    Console.WriteLine($"Polígono de {polígono.Polygon.Area:F2} m²:");
    foreach (var (línea, directa) in polígono.Entities)
    {
        var códigos = string.Join(", ", línea.Codes.Select(código => código.Name));
        Console.WriteLine($"  {códigos}: {línea.Points.Count} vértices, {(directa ? "en su sentido" : "al revés")}");
    }
}

return 0;
```
