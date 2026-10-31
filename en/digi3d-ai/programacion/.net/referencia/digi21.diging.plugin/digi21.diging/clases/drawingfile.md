# DrawingFile
<!-- id: drawingfile-2 -->
<!-- origen: 14fb7fcc58cf7ffc536c8eb9a3e86f8ad329aca0 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Drawing file loaded in a Digi3D.AI drawing window. Exists only inside Digi3D.AI and is used from extensions (commands, search providers, dynamic properties...).

```csharp
public class DrawingFile : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

The class has no public constructors. Obtain the active drawing window's active drawing file through the static `DigiNG.DrawingFile` property, which throws `NullReferenceException` if no drawing window is open. The property returns the same instance while the active file remains unchanged.

Digi3D.AI closes the file associated with `DrawingFile`. If Digi3D.AI has already closed the file, or `Dispose` has been called, members accessing the file throw `ObjectDisposedException`. After `Dispose`, the next read of `DigiNG.DrawingFile` returns a new instance.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | Drawing file path. |
| `bool CanRead` | `true` if the file format supports reading entities. |
| `bool CanWrite` | Always `true`. |
| `string Wkt` | WKT of the file's coordinate reference system. |
| `string ConnectionString` | Connection string for the file's database, or an empty string if the file has no database. |
| `IDictionary<string, int> DatabaseTables` | File's database tables: table name and table number. Empty if the file has no database. |
| `bool Visible` | File visibility in the drawing window. Throws `MissingMethodException` if the file format does not support hiding it. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum coordinates of the file's entities. `Xmin` is `null` if `Valid` is `false`. The installed assembly also declares a `set` accessor on all six properties, which throws `InvalidOperationException`. |
| `bool Valid` | `true` if the minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and edge midpoints of that box in the X, Y plane. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns an enumerator for the file's entities. The file can be iterated as often as required. If the entity count changes during iteration (for example, through `Add`), `MoveNext` throws `InvalidOperationException`: to add entities during iteration, store them in a list and add them afterward. |
| `void Add(Entity entity)` | Adds the entity to the drawing window. The entity is saved in the window's active drawing file at the time of the call. If the file has a database, code attributes (`Code.Attributes`) are also saved. The entity is discarded without an exception if the active file is read-only, a `DigiNG.AddingEntity` handler or an extension rejects it, or database insertion fails; `entity.Owner` is this file even in that case. |
| `void Add(IEnumerable<Entity> entities)` | Adds entities to the drawing window in a single operation. This overload does not copy code attributes. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Calls `Add(Entity)` and returns the same instance with the read-only type. |
| `void Delete(Entity entity)` | Deletes the entity from the window's active drawing file. Does nothing if the entity is not in that file. |
| `void Delete(IEnumerable<Entity> entities)` | Deletes entities in a single operation. |
| `void Undelete(Entity entity)` | Recovers a deleted entity from the window's active drawing file. Does nothing if the entity is not in that file. |
| `void Undelete(IEnumerable<Entity> entities)` | Recovers entities in a single operation. |
| `void Compress()` | Compresses the drawing file (removes deleted entities from the file), if the format supports it. The same operation as [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md). |
| `void Backup()` | Creates a backup copy of the drawing file. |
| `int IndexOf(Entity entity)` | Returns the entity's position among the entities held in memory by the file, or `-1` if it does not belong to this file or is not among the entities in memory. Throws `NullReferenceException` if the entity is `null`. |
| `void Dispose()` | Disconnects this object from the file. Does not close the file. |

Exceptions from `Add`, `Delete` and `Undelete`:

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entity` or `entities` is `null`. The `Delete` and `Undelete` overloads accepting `IEnumerable<Entity>` do not check whether `entities` is `null`. |
| `InvalidOperationException` | The entity belongs to another file (its `Owner` is another file). To copy an entity from one file to another, add the copy returned by `Clone()`. In overloads accepting `IEnumerable<Entity>`, the exception is thrown before modifying the drawing window. |
| `ObjectDisposedException` | `Dispose` has been called, Digi3D.AI has already closed the file, or the drawing window has closed. |
| `NullReferenceException` | The active drawing window is closing and no longer has a document (for example, inside a `DestroyingWindow` handler or a command's `Disposing` event). Affects `Add`, `Delete`, `Undelete`, `Compress` and `Backup`. |

## Events

| Event | Description |
| :--- | :--- |
| `EventHandler<Entity> EntityAdded` | Raised whenever the file is about to write an entity, before writing it: on adding, deleting or recovering it. The second argument is the stored entity. Exceptions thrown by handlers are not propagated to Digi3D.AI and do not prevent other handlers from being called: they are logged through `System.Diagnostics.Trace`. |

## Example

This command deletes text whose content is empty or contains only whitespace from the active drawing file, and writes the number deleted to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ELIMINA_TEXTOS_VACIOS")]
public class EliminaTextosVacios : Command
{
    public EliminaTextosVacios()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            // First iterate the file, then delete the entities.
            var vacíos = archivo
                .OfType<ReadOnlyText>()
                .Where(texto => !texto.Deleted && string.IsNullOrWhiteSpace(texto.Txt))
                .ToList<Entity>();

            archivo.Delete(vacíos);

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Textos vacíos eliminados: {vacíos.Count}");
            Dispose();
        };
    }
}
```

The command is compiled and loaded as explained in the [extension creation tutorial](/digi3d-ai/programacion/.net/tutorial-extension.md).
