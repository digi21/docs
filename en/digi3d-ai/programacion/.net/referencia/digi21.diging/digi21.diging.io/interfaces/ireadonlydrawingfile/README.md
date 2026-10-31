# IReadOnlyDrawingFile
<!-- id: ireadonlydrawingfile -->
<!-- origen: bf233cb16666603b97e1a5b2871115a996d3b52a -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Drawing file that can be iterated with `foreach`: returns its entities, path, coordinate reference system, database and minimum and maximum coordinates.

```csharp
public interface IReadOnlyDrawingFile : IEnumerable<Entity>, IWindow3D
```

Implements: `IEnumerable<Entity>` (file entities, of type [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)) and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) (minimum and maximum coordinates of the file's entities).

Derived interface: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which adds writing.

Implementations: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md), [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md), [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) and [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md). All implement `IDrawingFile`.

Entities returned by the enumerator have the returning file as their `Owner`. Each implementation defines its enumeration rules: for example, `Bin` allows the enumerator to be requested only once, and the `DrawingFile` enumerator throws `InvalidOperationException` if the file's entity count changes during iteration.

## Properties

| Property | Description |
| :--- | :--- |
| [ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md) | Connection string of the database associated with the file, or an empty string if the file has no database. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Drawing file path. |
| [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) | File visibility in the drawing window. |
| [Wkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/wkt.md) | WKT of the file's coordinate reference system. |
| `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Minimum and maximum coordinates of the file's entities and points derived from them. These are the members of [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |

## Methods

| Method | Description |
| :--- | :--- |
| [IndexOf(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/metodos/indexof.md) | Entity's position in the file, or `-1` if the entity does not belong to the file. |
| `IEnumerator<Entity> GetEnumerator()` | Enumerator of the file's entities. The `IEnumerable<Entity>` member used by `foreach`. |

## Example

This program displays a `.bin` file's information using the members of `IReadOnlyDrawingFile` and copies its points to another `.bin` file using the members of [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/). Both static methods work with any format. The output file receives the input file's coordinate reference system using a [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md):

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;

if (args.Length != 2)
{
    Console.WriteLine("Uso: ResumenArchivo <entrada.bin> <salida.bin>");
    return 1;
}

using var entrada = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

// Called only if the output has no .prj file.
DelegateGetWkt obtenWkt = () => entrada.Wkt;
using var salida = new Bin(args[1], 2, new Point3D(0, 0, 0), obtenWkt);

MuestraResumen(entrada);
var copiadas = CopiaPuntos(entrada, salida);
Console.WriteLine($"{copiadas} puntos copiados a {salida.Path}.");
return 0;

// Use only IReadOnlyDrawingFile members: works with any format.
static void MuestraResumen(IReadOnlyDrawingFile archivo)
{
    Console.WriteLine($"Archivo: {archivo.Path}");
    Console.WriteLine($"WKT: {archivo.Wkt}");
    Console.WriteLine(archivo.ConnectionString.Length == 0
        ? "Sin base de datos."
        : $"Base de datos: {archivo.ConnectionString}");

    if (archivo.Valid)
        Console.WriteLine($"X: {archivo.Xmin} a {archivo.Xmax}, Y: {archivo.Ymin} a {archivo.Ymax}, Z: {archivo.Zmin} a {archivo.Zmax}");
    else
        Console.WriteLine("El archivo no tiene coordenadas mínimas y máximas.");
}

// Copy undeleted points from source to target. Iterate through the source only once.
static int CopiaPuntos(IReadOnlyDrawingFile origen, IDrawingFile destino)
{
    if (!destino.CanWrite)
        throw new InvalidOperationException($"{destino.Path} está abierto en solo lectura.");

    var copiadas = 0;
    foreach (var entidad in origen)
    {
        if (entidad.Deleted || entidad is not ReadOnlyPoint punto)
            continue;

        destino.Add(punto.Clone());
        copiadas++;
    }
    return copiadas;
}
```
