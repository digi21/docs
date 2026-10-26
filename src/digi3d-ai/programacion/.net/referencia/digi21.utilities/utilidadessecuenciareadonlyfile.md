# UtilidadesSecuenciaReadOnlyFile
<!-- id: digi21.utilities.utilidadessecuenciareadonlyfile -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Métodos de extensión que concatenan las entidades de una secuencia de archivos de dibujo ([IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/)).

```csharp
public static class UtilidadesSecuenciaReadOnlyFile
```

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| `IEnumerable<Entity> EnumeraEntidades(this IEnumerable<IReadOnlyDrawingFile> archivos)` | Devuelve las entidades de cada archivo, archivo a archivo y en el orden de `archivos`. Incluye las entidades eliminadas. |
| `IEnumerable<T> EnumeraEntidades<T>(this IEnumerable<IReadOnlyDrawingFile> archivos) where T : class` | Igual, pero solo las entidades que son de tipo `T`, por ejemplo `ReadOnlyLine`. |

La secuencia se evalúa al recorrerla, y cada recorrido vuelve a leer las entidades de los archivos. Un archivo que solo se puede recorrer una vez, como un [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), lanza `InvalidOperationException` en el segundo recorrido; envuélvelo en un [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md) si necesitas recorrer el archivo más de una vez.

## Ejemplo

Este programa cuenta las líneas no eliminadas de varios archivos `.bin`:

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
