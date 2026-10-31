# DuplicityDetector
<!-- id: digi21.diging.topology.duplicitydetector -->
<!-- origen: b4a694b1cd0440ae68646bde95b5c288d7eae51b -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Detects duplicate entities in a sequence: entities of the same type with the same vertices in the XY plane.

```csharp
public static class DuplicityDetector
```

## Static methods

### DetectDuplicity

```csharp
public static IList<IList<Entity>> DetectDuplicity(this IEnumerable<Entity> entities)
```

Returns a list of groups. Each group is a list containing an entity and all its duplicates, with at least two entities. An entity appears in at most one group. If there are no duplicates, returns an empty list. Group entities are the same instances as in `entities`.

Two entities are duplicates if all these conditions hold, using the [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) tolerance for comparisons:

1. They are of the same type (line, point, text, polygon or complex).
2. Their minimum X, maximum X and minimum Y are equal.
3. They have the same number of vertices. Text counts as one vertex: its insertion point.
4. Each vertex `k` of one coincides in X and Y with vertex `k` or vertex `n − 1 − k` of the other, where `n` is the vertex count. Thus a line and the same line digitized in reverse are duplicates.

The detector does not compare Z, codes, attributes, text entity content or deletion state: deleted entities are also analyzed. Filter out deleted entities before searching for duplicates if you do not want to include them.

Group order and entity order within groups do not match `entities`: the method sorts entities by minimum Y.

## Example

This program finds non-deleted duplicate entities in a `.bin` file:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Duplicadas <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

var grupos = archivo.Where(entidad => !entidad.Deleted).DetectDuplicity();

foreach (var grupo in grupos)
    Console.WriteLine($"{grupo.Count} entidades iguales: {string.Join(" | ", grupo)}");

Console.WriteLine($"{grupos.Count} grupos de entidades duplicadas.");
return 0;
```
