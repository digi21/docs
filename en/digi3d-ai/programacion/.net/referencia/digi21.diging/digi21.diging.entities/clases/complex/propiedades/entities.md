# Entities
<!-- id: entities -->
<!-- origen: e5257cfab2341794453e7138c616055b1500d37e -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write complex entities.

```csharp
public new IList<Entity> Entities { get; }
```

## Property value

A collection, always the same instance for each complex, working directly on the complex's entities.

| Member | Description |
| :--- | :--- |
| `Add(Entity item)` | Adds `item` as the last entity. The entity becomes owned by the complex: do not add it to another complex, polygon or drawing file. |
| `Insert(int index, Entity item)` | Inserts `item` at position `index`. With `index` equal to `Count`, appends `item`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than `Count`. |
| `this[int index]` | `get`: entity at position `index`, with that entity's type (`Line`, `Point`, `Text`, `Polygon` or `Complex`). `set`: replaces the entity with another, which becomes owned by the complex. Both throw `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`. |
| `Remove(Entity item)` | Removes the specified entity from the collection if it matches one of its entities (the same native entity instance). `Remove` returns `false` if it cannot find the entity specified by `item`. |
| `RemoveAt(int index)` | Removes the entity at position `index`. Throws `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`. |
| `Clear()` | Removes all entities. |
| `IndexOf(Entity item)`, `Contains(Entity item)` | Find the same entity, rather than an entity with the same coordinates. |
| `CopyTo(Entity[] array, int arrayIndex)` | Copies entities. Throws `ArgumentNullException` if `array` is `null` and `ArgumentOutOfRangeException` if `arrayIndex` is negative. |
| `Count` | Entity count. |
| `IsReadOnly` | `true` if the complex is read-only. |
| `GetEnumerator()` | Entity enumerator, using each entity's type (`Line`, `Point`, `Text`, `Polygon` or `Complex`). Throws `InvalidOperationException` in `MoveNext` if the entity count changes during iteration. |

Methods modifying the collection throw `InvalidOperationException` if the complex is read-only. `Add`, `Insert` and the indexer's `set` accessor also throw `ArgumentNullException` if the entity is `null`, and `InvalidOperationException` if the entity is the complex itself or a complex containing it, because this would create a cycle. If the complex is read-only, the read-only exception is thrown before the other two; in the indexer's `set` accessor, the index check comes first.

This property hides [ReadOnlyComplex.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/propiedades/entities.md).

## Example

```csharp
foreach (var entidad in complejo.Entities)
{
    if (entidad is Point punto)
        Console.WriteLine(punto.Coordinate);
}
```
