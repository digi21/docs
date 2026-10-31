# IDrawingFile
<!-- id: idrawingfile -->
<!-- origen: 4d94e36825e80991d9f292495a49fdd1a2591b56 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Drawing file whose entities can be read, added and deleted.

```csharp
public interface IDrawingFile : IReadOnlyDrawingFile
```

Implements: [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), which in turn implements `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

Implementations: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md), [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md), [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) and [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md).

An entity added using `Add` becomes owned by the file: its `Owner` property is the file. An entity belonging to another file cannot be added: add the copy returned by `Clone()`.

## Properties

| Property | Description |
| :--- | :--- |
| [CanRead](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canread.md) | `true` if the file format allows entities to be read. |
| [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) | `true` if entities can be added and deleted. |
| [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) | Tables in the database associated with the file: table name and table number. |
| [ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md) | Connection string of the database associated with the file. Inherited from `IReadOnlyDrawingFile`. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Drawing file path. Inherited from `IReadOnlyDrawingFile`. |
| [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) | File visibility in the drawing window. Inherited from `IReadOnlyDrawingFile`. |
| [Wkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/wkt.md) | WKT of the file's coordinate reference system. Inherited from `IReadOnlyDrawingFile`. |
| `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Minimum and maximum coordinates of the file's entities. Inherited from [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |

## Methods

| Method | Description |
| :--- | :--- |
| [Add(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) | Appends an entity to the file. |
| [Add(IEnumerable&lt;Entity&gt;)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) | Appends multiple entities to the file in enumeration order. |
| [Add(Line)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md)<br>`Add(Point)`, `Add(Text)`, `Add(Polygon)`, `Add(Complex)` | Add an entity of that type and return it with its read-only type (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` or `ReadOnlyComplex`). |
| [Delete(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) | Deletes an entity from the file. |
| [Delete(IEnumerable&lt;Entity&gt;)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) | Deletes multiple entities from the file. |
| [IndexOf(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/metodos/indexof.md) | Entity's position in the file, or `-1`. Inherited from `IReadOnlyDrawingFile`. |
| `IEnumerator<Entity> GetEnumerator()` | Enumerator of the file's entities. Inherited from `IEnumerable<Entity>`. |

## Example

The [IReadOnlyDrawingFile example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#example) copies points from a file to an `IDrawingFile` using `CanWrite` and `Add`.
