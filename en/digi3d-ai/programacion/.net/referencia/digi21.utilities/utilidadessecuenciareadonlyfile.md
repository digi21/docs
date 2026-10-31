# UtilidadesSecuenciaReadOnlyFile
<!-- id: digi21.utilities.utilidadessecuenciareadonlyfile -->
<!-- origen: 40da1ad61f2af0c0fc48482f0d9af05942e38b4a -->

Namespace: `Digi21.Utilities`  
Assembly: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Extension methods concatenating entities from a sequence of drawing files ([IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/)).

```csharp
public static class UtilidadesSecuenciaReadOnlyFile
```

## Static methods

| Method | Description |
| :--- | :--- |
| `IEnumerable<Entity> EnumeraEntidades(this IEnumerable<IReadOnlyDrawingFile> archivos)` | Returns each file's entities, file by file and in `archivos` order. Includes deleted entities. |
| `IEnumerable<T> EnumeraEntidades<T>(this IEnumerable<IReadOnlyDrawingFile> archivos) where T : class` | The same, but only entities of type `T`, for example `ReadOnlyLine`. |

The sequence is evaluated when iterated, and each iteration reads the files' entities again. A file that can only be iterated once, such as a [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), throws `InvalidOperationException` on the second iteration; wrap it in a [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md) if you need to iterate it more than once.

## Example

This program counts non-deleted lines in several `.bin` files:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length == 0)
{
    Console.WriteLine("Uso: CuentaLíneas <archivo.bin> [<archivo.bin> ...]");
    return 1;
}

var archivos = args.Select(ruta => new Bin(ruta, 2, new Point3D(0, 0, 0), true)).ToList();
try
{
    var líneas = archivos.Cast<IReadOnlyDrawingFile>()
        .EnumeraEntidades<ReadOnlyLine>()
        .Count(línea => !línea.Deleted);

    Console.WriteLine($"{líneas} líneas en {archivos.Count} archivos.");
}
finally
{
    foreach (var archivo in archivos)
        archivo.Dispose();
}
return 0;
```
