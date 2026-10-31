# SegmentPointer
<!-- id: segmentpointer -->
<!-- origen: b9dd88008830c47b7ad19c1283a419283918eecc -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identifies a segment of a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) by its line and the indices of its two vertices.

```csharp
public struct SegmentPointer
```

Inheritance: `Object` → `ValueType` → `SegmentPointer`

The structure only stores the three values received by its constructor: it does not check whether `line` is non-`null` or indices are within `line.Points`, and it is not updated when the line changes. `default(SegmentPointer)` has `Line` set to `null` and both indices set to 0.

The `DetectIntersections` method of the `IntersectionDetector` class in the [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/) package groups by coordinate the `SegmentPointer` values of intersecting segments.

## Constructors

| Member | Description |
| :--- | :--- |
| [`SegmentPointer(ReadOnlyLine line, int firstVertex, int secondVertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/constructores.md) | Creates the pointer to the segment of `line` joining vertices `firstVertex` and `secondVertex`. |

## Properties

| Member | Description |
| :--- | :--- |
| [`int FirstVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/firstvertex.md) | Index of the segment's first vertex in `Line.Points`. |
| [`ReadOnlyLine Line { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/line.md) | Line to which the segment belongs. |
| [`int SecondVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/segmentpointer/propiedades/secondvertex.md) | Index of the segment's second vertex in `Line.Points`. |

## Example

This program stores a line in a `.bind` file and creates a [VertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/) for each vertex and a `SegmentPointer` for each segment:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Punteros <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var línea = new Line(new Code("040101"));
línea.Points.Add(new Point3D(0.0, 0.0, 0.0));
línea.Points.Add(new Point3D(100.0, 0.0, 0.0));
línea.Points.Add(new Point3D(100.0, 100.0, 0.0));
ReadOnlyLine guardada = archivo.Add(línea);

// One VertexPointer per vertex and one SegmentPointer per segment of the stored line.
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
