# CodeCollection
<!-- id: digi21.diging.entities.codecollection -->
<!-- origen: 94024d83d630df771aef992796c4796caca920a2 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Collection of an entity's codes. The object returned by [Entity.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/codes.md). Every collection change applies to the entity.

```csharp
public class CodeCollection : IList<Code>
```

Implements: `IList<Code>`, `ICollection<Code>`, `IEnumerable<Code>`.

The `Digi21.DigiNG` reference NuGet package does not declare `CodeCollection`: `Entity.Codes` has type `IList<Code>`. Code compiled with the package uses only `IList<Code>` members; the name indexer is unavailable.

The class has no public constructors.

The collection stores a copy of each [Code](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/). `Code` is a structure: to change a code, read the element, modify it and assign it back through the indexer.

If the entity is read-only (belongs to a drawing file), methods modifying the collection throw `InvalidOperationException`.

## Properties

| Property | Description |
| :--- | :--- |
| `int Count { get; }` | Code count. |
| `bool IsReadOnly { get; }` | `true` if the entity is read-only ([Entity.ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)). |
| `Code this[int index] { get; set; }` | Code at position `index`. Throws `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`. |
| `Code this[string name] { get; set; }` | First code whose `Name` equals `name`, without wildcards. Throws `ArgumentOutOfRangeException` if no code has that name. The `set` accessor replaces that code. Not in the reference package. |

## Methods

| Method | Description |
| :--- | :--- |
| `void Add(Code item)` | Appends the code. |
| `void Insert(int index, Code item)` | Inserts the code at position `index`. Throws `ArgumentOutOfRangeException` if `index` is negative or greater than `Count`. |
| `void Clear()` | Removes all codes. |
| `bool Remove(Code item)` | Removes from the collection and entity the code at the position returned by `IndexOf(item)`: the first whose name matches `item.Name` according to [Code.Compare](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/metodos-estaticos/compare.md). Returns `false` if no name matches. |
| `void RemoveAt(int index)` | Removes the code at position `index`. Throws `ArgumentOutOfRangeException` if `index` is not between `0` and `Count - 1`. |
| `int IndexOf(Code item)` | Returns the position of the first code whose name matches `item.Name` according to `Code.Compare`, with `*` and `?` wildcards. `IndexOf` returns `-1` if no code name matches `item.Name`. `IndexOf` does not compare `Table` or `Id`. |
| `bool Contains(Code item)` | `true` if `IndexOf(item)` does not return `-1`: compares the name with `*` and `?` wildcards, and does not compare `Table`, `Id` or `Attributes`. |
| `void CopyTo(Code[] array, int arrayIndex)` | Copies codes into `array` starting at `arrayIndex`. |
| `IEnumerator<Code> GetEnumerator()` | Returns a code enumerator. |

Exceptions from methods modifying the collection (`Add`, `Insert`, `Clear`, `Remove`, `RemoveAt` and the indexers' `set` accessors):

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is read-only. |

## Example

This program adds, modifies and removes a line's codes and writes it to a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ColeccionCodigos <salida.bind>");
    return 1;
}

var línea = new Line(new Code("020400"));
línea.Points.Add(new Point3D(0, 0, 100));
línea.Points.Add(new Point3D(10, 0, 100));

// Codes is a CodeCollection: each change applies to the entity.
línea.Codes.Add(new Code("040100"));
línea.Codes.Insert(0, new Code("030100"));

// IndexOf compares only the name, using Code.Compare wildcards.
Console.WriteLine(línea.Codes.IndexOf(new Code("04*")));   // 2

// Code is a structure: modify a copy and assign it back.
var código = línea.Codes[1];
código.Visible = 0;
línea.Codes[1] = código;

línea.Codes.RemoveAt(0);

foreach (var c in línea.Codes)
    Console.WriteLine($"{c.Name} {c.Visible:X8}");          // 020400 00000000, 040100 FFFFFFFF

using var archivo = new BinDouble(args[0]);
archivo.Add(línea);

// The line now belongs to the file: the collection is read-only.
Console.WriteLine(línea.Codes.IsReadOnly);                  // True
return 0;
```
