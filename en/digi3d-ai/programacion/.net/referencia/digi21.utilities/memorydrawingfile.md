# MemoryDrawingFile
<!-- id: digi21.utilities.memorydrawingfile -->
<!-- origen: 2a593c0f79f97b93f81e8d02ce6d417fe8f2f588 -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Drawing file wrapping another drawing file and retaining entities read from it in an in-memory list. Allows repeated iteration of a file that can only be iterated once, such as a [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public sealed class MemoryDrawingFile : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

Entities are read from the wrapped file as an enumerator requests them: an entity not yet requested consumes no memory. Each `GetEnumerator` call returns a new enumerator that first traverses the list's entities and then reads further entities from the wrapped file. Entities are the same instances returned by the wrapped file, so their `Owner` is that file rather than the `MemoryDrawingFile`.

## Constructors

```csharp
public MemoryDrawingFile(IDrawingFile drawingFile)
```

Wraps `drawingFile` and requests its enumerator. After creating the `MemoryDrawingFile`, do not iterate `drawingFile` directly: a file that can only be iterated once throws `InvalidOperationException`.

Throws `NullReferenceException` if `drawingFile` is `null`.

## Properties

All properties return the value of the same-named property in the wrapped file: `Path`, `Wkt`, `ConnectionString`, `DatabaseTables`, `CanRead`, `CanWrite`, `Visible` (also sets it), `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW` and `W`.

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns a new entity enumerator. Can be called as often as required. `Reset` returns to the start of the list. |
| `void Add(Entity entity)`<br>`void Add(IEnumerable<Entity> entities)` | Reads all remaining entities from the wrapped file, adds entities to the list and then calls the wrapped file's `Add` method. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Like `Add(Entity)`. Returns the result of the wrapped file's `Add` method. |
| `void Delete(Entity entity)`<br>`void Delete(IEnumerable<Entity> entities)` | Reads all remaining entities from the wrapped file and calls its `Delete` method. The entity remains in the list. |
| `int IndexOf(Entity entity)` | Returns the result of the wrapped file's `IndexOf` method. |
| `void Dispose()` | Disposes the wrapped file's enumerator and calls the wrapped file's `Dispose`. |

`Add` and `Delete` exceptions are those of the wrapped file. `Add` adds entities to the list before calling the wrapped file: if it throws an exception, for example because it was opened read-only, the entities remain in the list anyway.

Only reading an entity from the wrapped file is protected by a lock (`lock`). The list is not protected: do not add entities from one thread while another thread iterates the file.

## Example

This program iterates a `.bin` file twice: first to count lines and then to calculate their average length.

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 1)
{
    Console.WriteLine("Uso: LongitudMedia <archivo.bin>");
    return 1;
}

using var archivo = new MemoryDrawingFile(new Bin(args[0], 2, new Point3D(0, 0, 0), true));

// First iteration: read entities from disk and retain them in memory.
var líneas = archivo.OfType<ReadOnlyLine>().Count(línea => !línea.Deleted);
if (líneas == 0)
{
    Console.WriteLine("El archivo no tiene líneas.");
    return 0;
}

// Second iteration: entities come from memory.
var longitud = archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted).Sum(línea => línea.Perimeter);

Console.WriteLine($"{líneas} líneas, longitud media {longitud / líneas:F2}.");
return 0;
```
