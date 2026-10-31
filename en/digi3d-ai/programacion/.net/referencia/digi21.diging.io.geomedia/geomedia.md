# Geomedia
<!-- id: geomedia-2 -->
<!-- origen: c0de7eff36890378d3f09cf026b27e76960e26d2 -->

Namespace: `Digi21.DigiNG.IO.Geomedia`  
Assembly: [Digi21.DigiNG.IO.Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/)

Drawing file in Geomedia Datawarehouse format (`.mdb`). Each warehouse layer is a table in the Access database.

```csharp
public class Geomedia : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

The file connection uses the OLE DB provider `Microsoft.ACE.OLEDB.12.0`, whose 64-bit version must be installed on the computer. The [code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) defines the relation between Digi3D.AI codes and layers. See [Geomedia Datawarehouse files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md) for how the format works in Digi3D.AI.

Call `Dispose` (or use `using`) to close the file.

## Constructors

```csharp
public Geomedia(string path)
public Geomedia(string path, bool readOnly)
public Geomedia(string path, DelegateGetWkt GetWkt)
public Geomedia(string path, DelegateGetWkt GetWkt, bool readOnly)
public Geomedia(string path, DigiTab digiTab)
public Geomedia(string path, DigiTab digiTab, bool readOnly)
public Geomedia(string path, DigiTab digiTab, DelegateGetWkt GetWkt)
public Geomedia(string path, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

| Parameter | Description |
| :--- | :--- |
| `path` | `.mdb` file path. The file must exist and have at least one layer. |
| `digiTab` | Code table mapping codes to layers. Without this parameter, an empty code table is used, with one code added for each layer. |
| `GetWkt` | [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) delegate returning the WKT (Well-Known Text) representation of the coordinate reference system. The constructor calls the delegate once if the file's `GCoordSystem` table does not declare a system in ETRS89 (European Terrestrial Reference System 1989) or WGS 84 (World Geodetic System 1984), with geographic coordinates or a Universal Transverse Mercator (UTM) projection. If the delegate returns an empty string or no delegate is provided, the system in the user's Digi3D.AI settings is used. |
| `readOnly` | `true` to open the file read-only. Without this parameter, its value is `false`. |

This class's overloads do not display the layer selection dialog: they load all layers.

Constructors throw `Exception`, with the error message, if the file connection cannot be established or the file has no layer in which to read or save geometries.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | File path. |
| `bool CanRead` | `true` if the file can be read. |
| `bool CanWrite` | `false` if the file was opened read-only. |
| `string Wkt` | WKT of the first layer's coordinate reference system. |
| `string ConnectionString` | Connection string for the file's database. |
| `IDictionary<string, int> DatabaseTables` | Tables in the database: table name and table number. |
| `bool Visible` | File visibility in Digi3D.AI. Does not affect reading or writing. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum coordinates of the file's entities. `Xmin` is `null` if `Valid` is `false`. The installed assembly also declares a `set` accessor on all six properties, which throws `InvalidOperationException`. |
| `bool Valid` | `true` if the minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and edge midpoints of the box bounded by the minimum and maximum coordinates in the X, Y plane. The `Z` of all eight points is `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns the enumerator for the entities in all layers. Can only be obtained once per `Geomedia`: the second call throws `InvalidOperationException`. Entities returned by `GetEnumerator()` are read-only and each entity's `Owner` property is the file represented by this `Geomedia` object. |
| `void Add(Entity entity)` | Saves the entity in the layer for its first code. Does nothing if the code is not in the code table, if the file has no layer for that code or if the layer does not support that geometry type. Exception: an entity already saved in this file is saved again without these checks, and an exception is thrown if there is no layer for its code. |
| `void Add(IEnumerable<Entity> entities)` | Calls the `Add(Entity)` operation for each entity, in enumeration order. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Calls `Add(Entity)` and returns the same instance with the read-only type. |
| `void Delete(Entity entity)` | Marks the entity as deleted and saves it in its layer. |
| `void Delete(IEnumerable<Entity> entities)` | Calls `Delete(Entity)` for each entity. |
| `int IndexOf(Entity entity)` | Position of the entity among the entities held in memory by the file, or `-1` if it does not belong to this file or is not among them. Throws `NullReferenceException` for `null`. |
| `void Dispose()` | Closes the file. |

Exceptions from `Add` and `Delete`:

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entity` or `entities` is `null`. `Delete(IEnumerable<Entity>)` does not check whether `entities` is `null`. |
| `InvalidOperationException` | The file was opened read-only, or the entity belongs to another file (its `Owner` is another file). To copy an entity from one file to another, add the copy returned by `Clone()`. |

## Events

| Event | Description |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Percentage of a lengthy operation, in `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Informational text, in `ResultsAddedEventArgs.Message`. |
| `TaskAddedEventHandler TaskAdded` | Warning or error, in `TaskAddedEventArgs.Task`: an [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) with `Title`, `Severity` (`Error`, `Warning` or `Message`), `DrawingFile` and `Module`. |

## Example

This program shows a Geomedia warehouse's coordinate reference system and how many non-deleted entities each code has:

```csharp
using Digi21.DigiNG.IO.Geomedia;

if (args.Length != 1)
{
    Console.WriteLine("Uso: InfoGeomedia <almacen.mdb>");
    return 1;
}

using var almacén = new Geomedia(args[0], true);
Console.WriteLine(almacén.Wkt);

var porCódigo = new SortedDictionary<string, int>();
foreach (var entidad in almacén)
{
    if (entidad.Deleted)
        continue;

    var código = entidad.Codes[0].Name;
    porCódigo[código] = porCódigo.GetValueOrDefault(código) + 1;
}

foreach (var (código, número) in porCódigo)
    Console.WriteLine($"{código}: {número}");

return 0;
```
