# Dwg
<!-- id: digi21.diging.io.dwg.dwg -->
<!-- origen: 96223e9469075f6ec6775516f1593da9490d119e -->

Namespace: `Digi21.DigiNG.IO.Dwg`  
Assembly: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Drawing file in AutoCAD DWG format (`.dwg`). Reads and writes lines, points, text, polygons and complexes using the same engine as Digi3D.AI's [AutoCAD DWG files](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) importer/exporter.

```csharp
public class Dwg : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

Each entity's code is obtained from the [code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/), which translates the AutoCAD entity's layer and other attributes into a Digi3D.AI code.

Entities are read from the file as they are iterated with `foreach`. Changes (`Add` and `Delete`) are written to disk when `Dispose` is called, using the version in `DwgParameters.Version`, and only if the file was not opened read-only and has been modified. If writing fails, in a console application the error is reported through the `TaskAdded` event (`Error` severity); in a windowed application it is displayed in a message box.

## Constructors

```csharp
public Dwg(string path, DwgParameters parameters)
public Dwg(string path, DwgParameters parameters, bool readOnly)
public Dwg(string path, DwgParameters parameters, DelegateGetWkt GetWkt)
public Dwg(string path, DwgParameters parameters, DelegateGetWkt GetWkt, bool readOnly)
public Dwg(string path, DwgParameters parameters, DigiTab digiTab)
public Dwg(string path, DwgParameters parameters, DigiTab digiTab, bool readOnly)
public Dwg(string path, DwgParameters parameters, DigiTab digiTab, DelegateGetWkt GetWkt)
public Dwg(string path, DwgParameters parameters, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

Opens the file `path`. Overloads without `readOnly` open it for reading and writing.

| Parameter | Description |
| :--- | :--- |
| `path` | `.dwg` file path. |
| `parameters` | [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) with the output version, template and block conversion. |
| `GetWkt` | [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) delegate returning the coordinate reference system's WKT. Called only if the `.prj` file does not exist. |
| `digiTab` | Code table that translates the file's entities. Without this parameter, an empty code table is used. |
| `readOnly` | `true` to open the file read-only. |

If `path` does not exist and `parameters.TemplateFile` is an existing file, the template is copied to `path` and the copy is opened. If `path` does not exist and there is no template, a new drawing is created in memory with metric units and the code table's layers and blocks. This drawing is written to disk when `Dispose` is called, even if no entity has been added.

The file's coordinate reference system is obtained as follows:

1. If the `.prj` file with the same name as the `.dwg` exists, its first line is read.
2. If it does not exist and there is a `GetWkt` delegate, the text returned by the delegate is used.
3. If it does not exist and there is no delegate, a local (unknown) system is used.

In cases 2 and 3, if the file is not opened read-only, the `.prj` file is created with that WKT.

Constructors throw `Exception`, with the error message, if the `.dwg` or `.prj` file cannot be opened or created.

Warnings arising inside the constructor are reported through the `TaskAdded` event before the constructor finishes. A handler subscribing after the `Dwg` is created does not receive those warnings.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | File path. |
| `bool CanRead` | `true` if the import engine allows the file to be read. |
| `bool CanWrite` | `false` if the file was opened read-only. |
| `string Wkt` | WKT of the file's coordinate reference system. |
| `string ConnectionString` | Connection string for the database associated with the file, or an empty string if the file has no database. |
| `IDictionary<string, int> DatabaseTables` | Tables in the database associated with the file: table name and table number. Empty if the file has no database. |
| `bool Visible` | File visibility in Digi3D.AI. Does not affect reading or writing. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum coordinates of the file's entities. `Xmin` is `null` if `Valid` is `false`. The `set` accessor on all six properties throws `InvalidOperationException`. |
| `bool Valid` | `true` if the minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and edge midpoints of the box bounded by the minimum and maximum coordinates in the X, Y plane. The `Z` of all eight points is `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns the enumerator for the entities in the file. Can only be obtained once per `Dwg`: the second call throws `InvalidOperationException`. Entities returned by `GetEnumerator()` are read-only (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` or `ReadOnlyComplex`) and each entity's `Owner` property is the file represented by this `Dwg` object. |
| `void Add(Entity entity)` | Adds the entity to the file. If the format does not support the geometry, the entity is not written. Attributes from `entity.Attributes` are not copied. After the call, `entity.Owner` is this file. |
| `void Add(IEnumerable<Entity> entities)` | Adds entities in enumeration order. If an entity belongs to another file, throws the exception on reaching that entity: the previous entities have already been added. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Call `Add(Entity)` and return the same instance with the read-only type. |
| `void Delete(Entity entity)` | Marks the entity as deleted and stores it in the file again. |
| `void Delete(IEnumerable<Entity> entities)` | Calls `Delete(Entity)` for each entity. |
| `int IndexOf(Entity entity)` | Position of the entity among the file's entities, or `-1` if it does not belong to this file or cannot be found. |
| `void Dispose()` | Writes changes to disk and closes the file. |

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
| `TaskAddedEventHandler TaskAdded` | Warning or error, in `TaskAddedEventArgs.Task`: an [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) with `Title`, `Severity` (`Error`, `Warning` or `Message`), `DrawingFile` and `Module`. For example, an AutoCAD entity type that cannot be read (reported once per type) or, in a console application, an error writing the file. |

## Example

This program reads a `.dwg` file and shows how many entities of each type it contains and how many have each code:

```csharp
using Digi21.DigiNG.DigiTab;
using Digi21.DigiNG.IO.Dwg;
using Digi21.Tasks;

if (args.Length != 2)
{
    Console.WriteLine("Uso: InfoDwg <archivo.dwg> <tabla de códigos>");
    return 1;
}

using var digiTab = DigiTab.Load(args[1]);

var parámetros = new DwgParameters { BlockCriteria = DwgImportBlocksAs.Point };
using var archivo = new Dwg(args[0], parámetros, digiTab, true);
archivo.TaskAdded += (object sender, TaskAddedEventArgs e) => Console.WriteLine($"{e.Task.Severity}: {e.Task.Title}");

var entidades = archivo.Where(entidad => !entidad.Deleted).ToList();

foreach (var tipo in entidades.GroupBy(entidad => entidad.GetType().Name))
    Console.WriteLine($"{tipo.Key}: {tipo.Count()}");

foreach (var código in entidades.SelectMany(entidad => entidad.Codes).GroupBy(código => código.Name).OrderBy(g => g.Key))
    Console.WriteLine($"{código.Key}: {código.Count()}");

return 0;
```
