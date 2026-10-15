# SegmentPointer
<!-- id: segmentpointer -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identifica un segmento de una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) por la línea y los índices de sus dos vértices.

```csharp
public struct SegmentPointer
```

Herencia: `Object` → `ValueType` → `SegmentPointer`

La estructura solo guarda los tres valores que recibe el constructor: no comprueba que `line` no sea `null` ni que los índices estén dentro de `line.Points`, y no se actualiza si la línea cambia. `default(SegmentPointer)` tiene `Line` a `null` y los dos índices a 0.

El método `DetectIntersections` de la clase `IntersectionDetector` del paquete [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology.md) agrupa por coordenada los `SegmentPointer` de los segmentos que se cortan.

## Constructores

| Miembro | Descripción |
| :--- | :--- |
| [`SegmentPointer(ReadOnlyLine line, int firstVertex, int secondVertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/constructores.md) | Crea el puntero al segmento de `line` que une los vértices `firstVertex` y `secondVertex`. |

## Propiedades

| Miembro | Descripción |
| :--- | :--- |
| [`int FirstVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/firstvertex.md) | Índice del primer vértice del segmento en `Line.Points`. |
| [`ReadOnlyLine Line { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/line.md) | Línea a la que pertenece el segmento. |
| [`int SecondVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/secondvertex.md) | Índice del segundo vértice del segmento en `Line.Points`. |

## Ejemplo

Este programa guarda una línea en un archivo `.bind` y crea un [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) por cada vértice y un `SegmentPointer` por cada segmento:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Punteros <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());

var línea = new Line(new Code("040101"));
línea.Points.Add(new Point3D(0.0, 0.0, 0.0));
línea.Points.Add(new Point3D(100.0, 0.0, 0.0));
línea.Points.Add(new Point3D(100.0, 100.0, 0.0));
ReadOnlyLine guardada = archivo.Add(línea);

// Un VertexPointer por vértice y un SegmentPointer por segmento de la línea guardada.
var vértices = Enumerable.Range(0, guardada.Points.Count)
    .Select(i => new VertexPointer(guardada, i))
    .ToList();
var segmentos = Enumerable.Range(0, guardada.Points.Count - 1)
    .Select(i => new SegmentPointer(guardada, i, i + 1))
    .ToList();

foreach (var v in vértices)
    Console.WriteLine($"Vértice {v.Vertex}: {v.Line.Points[v.Vertex]}");

foreach (var s in segmentos)
    Console.WriteLine($"Segmento {s.FirstVertex}-{s.SecondVertex}: de {s.Line.Points[s.FirstVertex]} a {s.Line.Points[s.SecondVertex]}");

return 0;
```
