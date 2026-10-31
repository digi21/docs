# Holes
<!-- id: holes-2 -->
<!-- origen: 108cb2ae758744f84aa6b82bdd3280cc03c914a6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Polygon holes.

```csharp
public IReadOnlyList<ReadOnlyLine> Holes { get; }
```

## Property value

A read-only collection of holes, in order. Each hole is a closed line. Holes of a polygon belonging to a drawing file have that file as `Owner` and are read-only.

The first read creates the collection, and subsequent reads return the same instance. The collection reflects the polygon's holes at any given time.

In a [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/), `Polygon.Holes` hides this property and returns a read/write collection.

## Example

```csharp
foreach (var hueco in polígono.Holes)
    Console.WriteLine($"Hueco de {hueco.Points.Count} vértices");
```
