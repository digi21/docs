# Entities
<!-- id: entities-2 -->
<!-- origen: 47b185d5d5881110782db8aae2902ed4e2cc6a2b -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Complex entities.

```csharp
public IEnumerable<Entity> Entities { get; }
```

## Property value

The complex's entities, in order, with each entity's type. Entities of a complex belonging to a drawing file have that file as `Owner` and are read-only.

Each call to `GetEnumerator` creates a new enumerator. `MoveNext` throws `InvalidOperationException` if the complex's entity count changes during iteration. In a [Complex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/), `Complex.Entities` hides this property and returns a read/write collection.

## Example

```csharp
// complejo is a ReadOnlyComplex read from a file.
foreach (var parte in complejo.Entities)
    Console.WriteLine(parte.GetType().Name);
```
