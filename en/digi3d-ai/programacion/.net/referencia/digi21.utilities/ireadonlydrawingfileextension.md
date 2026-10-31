# IReadOnlyDrawingFileExtension
<!-- id: digi21.utilities.ireadonlydrawingfileextension -->
<!-- origen: 92c764cc6ff767a3d2cc80f4018619e769572c6c -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Adds the `Contains` method to [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), indicating whether an entity belongs to the drawing file.

```csharp
public static class IReadOnlyDrawingFileExtension
```

## Static methods

### Contains

```csharp
public static bool Contains(this IReadOnlyDrawingFile file, Entity entity)
```

Returns `true` if `entity.Owner` is the `file` object. This is a reference comparison: the file's entities are not iterated.

| Parameter | Description |
| :--- | :--- |
| `file` | Drawing file. |
| `entity` | Entity. |

Throws `NullReferenceException` if `entity` is `null`.

`Entity.Owner` is of type [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/). Therefore, `Contains` always returns `false` for a file implementing only `IReadOnlyDrawingFile`, such as reference files from `DigiNG.ReferenceFiles`. It also returns `false` for a [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md): its entities' `Owner` is the wrapped drawing file.

Inside the `Digi21.Utilities` namespace, or with `using Digi21.Utilities;`, `archivo.Contains(entidad)` uses this method rather than LINQ's `Enumerable.Contains`, which iterates the file and compares entities individually.

## Example

This program reads a `.bin` file and checks that the first entity belongs to that file and not to another:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 2)
{
    Console.WriteLine("Uso: Pertenece <a.bin> <b.bin>");
    return 1;
}

using var a = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
using var b = new Bin(args[1], 2, new Point3D(0, 0, 0), true);

var primera = a.FirstOrDefault();
if (primera is null)
{
    Console.WriteLine("El archivo está vacío.");
    return 1;
}

Console.WriteLine($"¿Pertenece a {a.Path}? {a.Contains(primera)}"); // True
Console.WriteLine($"¿Pertenece a {b.Path}? {b.Contains(primera)}"); // False
return 0;
```
