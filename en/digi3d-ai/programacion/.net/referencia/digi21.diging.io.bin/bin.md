# Bin
<!-- id: bin-3 -->
<!-- origen: b9960fd84f9848eed8b92e1cfe76e64c06b8b200 -->

Namespace: `Digi21.DigiNG.IO.Bin`  
Assembly: [Digi21.DigiNG.IO.Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/)

Drawing file in the classic Digi3D.AI binary format (`.bin`). Reads and writes lines, points, text, polygons and complexes.

```csharp
public class Bin : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

The `.bin` format stores coordinates as integers: the global origin is subtracted from each coordinate, which is then multiplied by 10 raised to the number of decimal places and truncated. The coordinate reference system is stored in a `.prj` file with the same name as the `.bin` file.

Creating a `Bin` does not load the file into memory: entities are read from disk as they are iterated with `foreach`. Files of any size can therefore be iterated.

Call `Dispose` (or use `using`) to close the file. Until a `Bin` opened for writing is closed, other processes can read the file but cannot write to it.

## Constructors

```csharp
public Bin(string path, int decimals, Point3D globalOrigin)
public Bin(string path, int decimals, Point3D globalOrigin, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DelegateGetWkt GetWkt)
public Bin(string path, int decimals, Point3D globalOrigin, DelegateGetWkt GetWkt, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, DelegateGetWkt GetWkt)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

Opens the file `path`. If `readOnly` is `false` (the value used by overloads without `readOnly`) and the file does not exist, it creates it.

| Parameter | Description |
| :--- | :--- |
| `path` | `.bin` file path. |
| `decimals` | Number of decimal places in coordinates: when saving, each coordinate is multiplied by 10 raised to `decimals`, and divided when reading. Returned by the `Decimals` property. |
| `globalOrigin` | Origin subtracted from coordinates when saving and added when reading. Returned by the `GlobalOrigin` property. |
| `GetWkt` | [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) delegate returning the coordinate reference system's WKT. Called only if the `.prj` file does not exist. |
| `digiTab` | [Code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) that translates the file's codes. Without this parameter, an empty code table is used, and the file's codes are added as they are read. |
| `readOnly` | `true` to open the file read-only. |

The file's coordinate reference system is obtained as follows:

1. If the `.prj` file exists, it is read from that file.
2. If it does not exist and there is a `GetWkt` delegate, the text returned by that delegate is used.
3. If it does not exist and there is no delegate, a local (unknown) system is used.

In cases 2 and 3, if the file is not opened read-only, the `.prj` file is created with that WKT.

The constructors throw `Exception`, with the error message, if the `.bin` or `.prj` file cannot be opened or created.

Warnings generated inside the constructor (for example, a code table code with no translation to the `.bin` format) are reported through `TaskAdded` before the constructor finishes. A handler subscribing after the `Bin` is created does not receive these warnings.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | File path. |
| `int Decimals` | Number of decimal places used to read and write coordinates: the constructor's `decimals` parameter value. |
| `Point3D GlobalOrigin` | Global origin used to read and write coordinates: the constructor's `globalOrigin` parameter value. |
| `bool CanRead` | Always `true`. |
| `bool CanWrite` | `false` if the file was opened read-only. |
| `string Wkt` | WKT of the file's coordinate reference system. |
| `string ConnectionString` | Connection string of the database associated with the file, or an empty string if the file has no database. |
| `IDictionary<string, int> DatabaseTables` | Tables in the database associated with the file: table name and table number. Empty if the file has no database. |
| `bool Visible` | File visibility in Digi3D.AI. Does not affect reading or writing. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum coordinates of the file's entities. `Xmin` is `null` if `Valid` is `false`. The installed assembly also declares a `set` accessor on all six properties, which throws `InvalidOperationException`. |
| `bool Valid` | `true` if the minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and side midpoints of the box bounded by the minimum and maximum coordinates in the X, Y plane. All eight points have `Z` equal to `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns the enumerator of the file's entities. It can be obtained only once per `Bin`: a second call throws `InvalidOperationException`. To iterate through the file again, create another `Bin`. Entities returned by `GetEnumerator()` are read-only (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` or `ReadOnlyComplex`), and each entity's `Owner` property is the file represented by this `Bin` object. Deleted entities are also returned, with `Deleted` set to `true`. |
| `void Add(Entity entity)` | Appends the entity to the file. After the call, `entity.Owner` is this file. |
| `void Add(IEnumerable<Entity> entities)` | Appends entities to the file in enumeration order. If an entity belongs to another file, it throws an exception upon reaching that entity: preceding entities have already been added. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Adds the entity and returns the same instance with the read-only type. |
| `void Delete(Entity entity)` | Marks the entity as deleted and writes it back to the file. The entity remains in the file with `Deleted` set to `true`. |
| `void Delete(IEnumerable<Entity> entities)` | Calls `Delete(Entity)` for each entity. |
| `int IndexOf(Entity entity)` | Entity's position among the entities the file has in memory, or `-1` if the entity does not belong to this file or is not among them. Throws `NullReferenceException` for `null`. |
| `void Dispose()` | Closes the file. |

Exceptions from `Add` and `Delete`:

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entity` or `entities` is `null`. `Delete(IEnumerable<Entity>)` does not check whether `entities` is `null`. |
| `InvalidOperationException` | The file was opened read-only, or the entity belongs to another file (its `Owner` is another file). To copy an entity between files, add the copy returned by `Clone()`. |

The format stores 6 code characters. When an entity with a longer code is written, the first 6 characters are stored and a warning is reported through `TaskAdded`, once per code.

## Events

| Event | Description |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Percentage of a long operation, in `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Informational text, in `ResultsAddedEventArgs.Message`. |
| `TaskAddedEventHandler TaskAdded` | Warning or error, in `TaskAddedEventArgs.Task`: an [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) with `Title`, `Severity` (`Error`, `Warning` or `Message`), `DrawingFile` and `Module`. For example, a file code not in the code table or a code truncated to 6 characters. |

## Example

This program copies lines not marked as deleted from one `.bin` file to another `.bin` file with the same coordinate reference system, and displays warnings from both files:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Tasks;

if (args.Length != 2)
{
    Console.WriteLine("Uso: CopiaLineas <entrada.bin> <salida.bin>");
    return 1;
}

void MuestraAviso(object sender, TaskAddedEventArgs e) =>
    Console.WriteLine($"{e.Task.Severity}: {e.Task.Title}");

using var entrada = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
entrada.TaskAdded += MuestraAviso;

// The delegate is called only if the output .prj does not exist.
using var salida = new Bin(args[1], 2, new Point3D(0, 0, 0), () => entrada.Wkt);
salida.TaskAdded += MuestraAviso;

var copiadas = 0;
foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyLine línea)
        continue;

    // A read entity belongs to the input: add a copy.
    salida.Add(línea.Clone());
    copiadas++;
}

Console.WriteLine($"{copiadas} líneas copiadas.");
return 0;
```
