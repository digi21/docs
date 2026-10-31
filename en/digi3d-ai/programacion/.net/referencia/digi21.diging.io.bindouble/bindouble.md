# BinDouble
<!-- id: bindouble -->
<!-- origen: 9ab53293c534d7e7f0c27a3e896a2f35983327f7 -->

Namespace: `Digi21.DigiNG.IO.BinDouble`  
Assembly: [Digi21.DigiNG.IO.BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/)

Drawing file in Digi3D.AI's double-precision binary format (`.bind`). Reads and writes lines, points, text, polygons and complexes, their attributes, the reference files stored in the file and, if a database is specified, its codes' database attributes.

```csharp
public class BinDouble : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

The `.bind` file starts with a header storing the coordinate reference system's WKT and the file's minimum and maximum coordinates. The format does not use a `.prj` file.

Creating a `BinDouble` does not load the file into memory: entities are read from disk as they are iterated with `foreach`.

Call `Dispose` (or use `using`) to close the file. Until a `BinDouble` opened for writing is closed, other processes can read the file but cannot write to it.

## Constructors

```csharp
public BinDouble(string path)
public BinDouble(string path, bool readOnly)
public BinDouble(string path, DelegateGetWkt GetWkt)
public BinDouble(string path, DelegateGetWkt GetWkt, bool readOnly)
public BinDouble(string path, DigiTab digiTab)
public BinDouble(string path, DigiTab digiTab, bool readOnly)
public BinDouble(string path, DigiTab digiTab, DelegateGetWkt GetWkt)
public BinDouble(string path, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, bool readOnly)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DelegateGetWkt GetWkt)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DelegateGetWkt GetWkt, bool readOnly)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DigiTab digiTab)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DigiTab digiTab, bool readOnly)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DigiTab digiTab, DelegateGetWkt GetWkt)
public BinDouble(string path, DatabaseConnectionProperties databaseProperties, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

Opens the file `path`. If `readOnly` is `false` (the value used by overloads without `readOnly`) and the file does not exist, it creates it.

| Parameter | Description |
| :--- | :--- |
| `path` | `.bind` file path. |
| `databaseProperties` | Database of code attributes. See [DatabaseConnectionProperties](#databaseconnectionproperties). |
| `digiTab` | [Code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) that translates the file's codes. Without this parameter, an empty code table is used, and the file's codes are added to it as they are read. Saving database attributes requires a code table that assigns a database table to each code. |
| `GetWkt` | [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) delegate returning the coordinate reference system's WKT for a new file. Called only if the file does not exist. |
| `readOnly` | `true` to open the file read-only. |

Coordinate reference system:

- If the file exists, it is read from its header. Files in version 1 of the format do not store it and open with a local (unknown) system.
- If the file does not exist, the WKT returned by `GetWkt` is used or, without a delegate, a local system, and is written to the new file's header.

Database:

- Without the `databaseProperties` parameter, the file opens without a database.
- The database opens read-only if `readOnly` is `true`, and for reading and writing if it is `false`.
- When connecting to a database, the constructor reports the data model, connection string and completion of the connection through `ResultsAdded`.

If `readOnly` is `false` and the file exists but cannot be opened for writing (for example, because another process has it open or it has the read-only attribute), the file opens read-only and `CanWrite` is `false`. The constructor does not throw an exception in that case.

Constructors throw `Exception`, with the error message, in these cases:

- the file cannot be opened or created;
- the file does not start with the `.bind` format header, or uses a format version later than 5;
- the data model in `DataModel` does not exist, or the database connection cannot be established.

Warnings arising inside the constructor are reported through the `TaskAdded` event before the constructor finishes. A handler subscribing after the `BinDouble` is created does not receive those warnings.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | File path. |
| `IEnumerable<string> ReferenceFiles` | Paths of the reference files stored in the file, excluding those marked as deleted. Until entities have been iterated to the end, each read of this property traverses the rest of the file. After a complete `foreach`, the property does not traverse it again. |
| `bool CanRead` | `true` if the file can be read. |
| `bool CanWrite` | `false` if the file is open read-only. |
| `string Wkt` | WKT of the file's coordinate reference system. |
| `string ConnectionString` | Connection string for the database, or an empty string if the file has no database. |
| `IDictionary<string, int> DatabaseTables` | Tables in the database: table name and table number. Empty if the file has no database. |
| `bool Visible` | File visibility in Digi3D.AI. Does not affect reading or writing. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum coordinates of the file's entities. `Xmin` is `null` if `Valid` is `false`. The installed assembly also declares a `set` accessor on all six properties, which throws `InvalidOperationException`. |
| `bool Valid` | `true` if the minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and edge midpoints of the box bounded by the minimum and maximum coordinates in the X, Y plane. The `Z` of all eight points is `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns the enumerator for the entities in the file. Can only be obtained once per `BinDouble`: the second call throws `InvalidOperationException`. To iterate the file again, create another `BinDouble`. Entities returned by `GetEnumerator()` are read-only (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` or `ReadOnlyComplex`) and each entity's `Owner` property is the file represented by this `BinDouble` object. Deleted entities are also returned, with `Deleted` set to `true`. |
| `void Add(Entity entity)` | Appends the entity to the file. Saves non-`null` values of `entity.Attributes` and, if the file has a database, each code's attributes (`Code.Attributes`). Without a database, code attributes are not saved. After the call, `entity.Owner` is this file. |
| `void Add(IEnumerable<Entity> entities)` | Appends entities to the file in enumeration order, with their code attributes. This overload does not save `entity.Attributes`. If an entity causes an exception, the previous entities have already been added. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Adds the entity and returns the same instance with the read-only type. |
| `void Delete(Entity entity)` | Marks the entity as deleted in the file. The entity remains in the file with `Deleted` set to `true`. |
| `void Delete(IEnumerable<Entity> entities)` | Calls `Delete(Entity)` for each entity. |
| `int IndexOf(Entity entity)` | Position of the entity among the entities held in memory by the file, or `-1` if it does not belong to this file or is not among them. Throws `NullReferenceException` for `null`. |
| `void Dispose()` | Closes the file. |

Exceptions from `Add` and `Delete`:

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entity` or `entities` is `null`. `Delete(IEnumerable<Entity>)` does not check whether `entities` is `null`. |
| `InvalidOperationException` | The file is open read-only, or the entity belongs to another file (its `Owner` is another file). To copy an entity from one file to another, add the copy returned by `Clone()`. |
| `Exception` | The file has a database, an entity code has attributes (`Code.Attributes` is not empty) and that code has no database table in the code table, or its table has no schema. Also thrown with the error message if the database rejects the attributes. |

If the entity is already saved in this file, `Add` and `Delete` do not write it again: they only update its deleted flag in the file.

## Events

| Event | Description |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Percentage of a lengthy operation, in `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Informational text, in `ResultsAddedEventArgs.Message`; for example, information about the database connection. |
| `TaskAddedEventHandler TaskAdded` | Warning or error, in `TaskAddedEventArgs.Task`: an [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) with `Title`, `Severity` (`Error`, `Warning` or `Message`), `DrawingFile` and `Module`. |

## DatabaseConnectionProperties

```csharp
public struct DatabaseConnectionProperties
```

Database to which a `BinDouble` connects.

| Property | Description |
| :--- | :--- |
| `string DataModel` | Database data model: `CATDBS` or `Geographics`, case-insensitive. These are the values of the `--mdat` option of the [bind command-line command](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md). |
| `string ConnectionString` | Connection string. Supports drawing file name variables, for example `$(ArchivoDibujoConRutaSinExtension)`, like the `--cconexion` option. |

With an empty or `null` `ConnectionString` (the value of `new DatabaseConnectionProperties()`), the file opens without a database.

## Example

This program opens a `.bind` file without a database, shows how many entities of each type it contains and lists its reference files:

```csharp
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 1)
{
    Console.WriteLine("Uso: InfoBind <archivo.bind>");
    return 1;
}

// Without a database and read-only.
using var archivo = new BinDouble(args[0], true);
archivo.TaskAdded += (sender, e) => Console.WriteLine($"{e.Task.Severity}: {e.Task.Title}");

var porTipo = new Dictionary<string, int>();
foreach (var entidad in archivo)
{
    if (entidad.Deleted)
        continue;

    var tipo = entidad.GetType().Name;
    porTipo[tipo] = porTipo.GetValueOrDefault(tipo) + 1;
}

foreach (var (tipo, número) in porTipo)
    Console.WriteLine($"{tipo}: {número}");

// The entities have already been read: ReferenceFiles does not traverse the file again.
foreach (var referencia in archivo.ReferenceFiles)
    Console.WriteLine($"Referencia: {referencia}");

return 0;
```

The [Bind2Shape](/digi3d-ai/programacion/.net/ejemplos/bind2shape.md) and [MuestraAtributosBBDDGeometriasArchivoBinD](/digi3d-ai/programacion/.net/ejemplos/muestra-atributos-de-base-de-datos.md) examples open a `.bind` file with an Access database.
