# Shp
<!-- id: shp-3 -->
<!-- origen: 73c847e59a91f5c458850a3b402f504bcb7d96c1 -->

Namespace: `Digi21.DigiNG.IO.Shp`  
Assembly: [Digi21.DigiNG.IO.Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/)

Drawing file in ESRI Shapefile format. A `Shp` represents a **folder**: each `.shp` file in the folder is a layer, with its `.shx` index, `.dbf` attribute table and `.prj` coordinate reference system.

```csharp
public class Shp : IDrawingFile, IDisposable
```

Implements: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), which in turn implements [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` and [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

The [code table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) defines the relationship between Digi3D.AI codes and layers: each code's Shapefile format translation contains the name of the layer where it is stored. Writing entities therefore requires a code table with this translation.

How the format works in Digi3D.AI is described in [ESRI Shapefiles](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md).

Call `Dispose` (or use `using`) to close the layers.

## Constructors

```csharp
public Shp(string path)
public Shp(string path, CodePage codePage)
public Shp(string path, bool readOnly)
public Shp(string path, bool readOnly, CodePage codePage)
public Shp(string path, DelegateGetWkt GetWkt)
public Shp(string path, DelegateGetWkt GetWkt, CodePage codePage)
public Shp(string path, DelegateGetWkt GetWkt, bool readOnly)
public Shp(string path, DelegateGetWkt GetWkt, bool readOnly, CodePage codePage)
public Shp(string path, DigiTab digiTab)
public Shp(string path, DigiTab digiTab, CodePage codePage)
public Shp(string path, DigiTab digiTab, bool readOnly)
public Shp(string path, DigiTab digiTab, bool readOnly, CodePage codePage)
public Shp(string path, DigiTab digiTab, DelegateGetWkt GetWkt)
public Shp(string path, DigiTab digiTab, DelegateGetWkt GetWkt, CodePage codePage)
public Shp(string path, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
public Shp(string path, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly, CodePage codePage)
```

| Parameter | Description |
| :--- | :--- |
| `path` | Path of a `.shp` file. The file's folder is the layers folder: the portion of the path before the last backslash (`\`) is used. |
| `digiTab` | Code table relating codes to layers. Without this parameter, an empty code table is used: when reading, one code per layer is added to it; when writing, no entity has a code with a Shapefile format translation, so nothing is saved. |
| `GetWkt` | [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) delegate returning the coordinate reference system's WKT. Called only if the folder has no layers. |
| `readOnly` | `true` to open layers read-only. Defaults to `false` without this parameter. |
| `codePage` | Text encoding of the `.dbf` tables created, also written to a `.cpg` file. When reading, used only if the `.dbf` does not specify its encoding and there is no `.cpg` file. Defaults to `CodePage.UTF_8` without this parameter. |

On opening, all layers in the folder with a `.shx` file are loaded. This class's overloads do not display the layer selection dialog box.

Coordinates are stored without rounding (the format's *Precision decimals* parameter is 0).

The constructors throw `Exception`, with the error message, if opening the folder fails; for example, if several codes for the same layer have no condition in the code table.

## Properties

| Property | Description |
| :--- | :--- |
| `string Path` | Value of the constructor's `path` parameter. |
| `bool CanRead` | `true` if layers can be read. |
| `bool CanWrite` | `false` if layers were opened read-only. |
| `string Wkt` | Coordinate reference system WKT: that of the first layer or, if the folder has no layers, the value returned by `GetWkt`. If the folder has no layers and there is no `GetWkt` delegate, the property throws an exception. |
| `string ConnectionString` | Database connection string, or an empty string if there is no database. |
| `IDictionary<string, int> DatabaseTables` | Database tables: table name and table number. |
| `bool Visible` | File visibility in Digi3D.AI. Does not affect reading or writing. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Minimum and maximum layer coordinates, read from their headers. `Xmin` is `null` if `Valid` is `false`. The installed assembly also declares a `set` accessor on all six properties, which throws `InvalidOperationException`. |
| `bool Valid` | `true` if minimum and maximum coordinates are valid. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` and `Zmax - Zmin`. |
| `Point3D Center` | Center of the box defined by the minimum and maximum coordinates. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Corners and side midpoints of that box in the X, Y plane. All eight points have `Z` equal to `Zmin`. |

## Methods

| Method | Description |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Returns the enumerator of all layers' entities, layer by layer. It can be requested only once per `Shp`: a second call throws `InvalidOperationException`. Entities are read-only, and their `Owner` property is this file. |
| `void Add(Entity entity)` | Stores the entity in its code's layer and its code's attributes (`Code.Attributes`) in that layer's `.dbf` table. Creates the layer if it does not exist. Does nothing, without an exception or message, if the entity cannot be stored in that layer (for example, a point in a line layer) or its code is not in the code table. |
| `void Add(IEnumerable<Entity> entities)` | Stores entities in enumeration order. Unlike `Add(Entity)`, checks the read-only state, `Owner` and code count of all entities, and uses `TaskAdded` and `ResultsAdded` to report entities with attributes in their code (nonempty `Code.Attributes`) that cannot be stored in the layer corresponding to each entity's code. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Calls `Add(Entity)` and returns the same instance with the read-only type. |
| `void Delete(Entity entity)` | Marks the entity as deleted in its layer. Depending on the Digi3D.AI [Geometry elimination mode](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/modo-de-eliminacion-de-geometrias.md) option, the `.dbf` record is marked as deleted or a value is written to a field. |
| `void Delete(IEnumerable<Entity> entities)` | Calls `Delete(Entity)` for each entity. |
| `int IndexOf(Entity entity)` | Returns the entity's position among the entities the file has in memory, or `-1` if it does not belong to this file or is not among the entities in memory. Throws `NullReferenceException` if the entity is `null`. |
| `void Dispose()` | Closes the layers. |

When saving, an entity is not written, and a message is reported through `ResultsAdded` (once per code), if its code has no Shapefile format translation, no layer name, or its database table is absent from the code table schema. A code with translation disabled is not written and generates no message.

Exceptions from `Add` and `Delete`:

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entities` is `null` in `Add(IEnumerable<Entity>)`, or `entity` is `null` in `Delete(Entity)`. `Add(Entity)` with `null` throws `NullReferenceException`, and `Delete(IEnumerable<Entity>)` does not check whether `entities` is `null`. |
| `InvalidOperationException` | Layers are read-only; the entity belongs to another file (its `Owner` is another file); or the entity has more than one code. `Add(Entity)` performs these checks only if the entity can be stored in its code's layer. |
| `Exception` | The entity's code has attributes (`Code.Attributes` is not empty) and has no database table or its table has no schema; with `Add(IEnumerable<Entity>)`, also if the code is not in the code table. Also, with the error message, if the `.dbf` table rejects the attributes. |

## Events

| Event | Description |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Percentage of a long operation, in `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Informational text, in `ResultsAddedEventArgs.Message`; for example, codes that cannot be stored. |
| `TaskAddedEventHandler TaskAdded` | Warning or error, in `TaskAddedEventArgs.Task`: an [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) with `Title`, `Severity` (`Error`, `Warning` or `Message`), `DrawingFile` and `Module`. |

## CodePage

```csharp
public enum CodePage : byte
```

Language driver identifier (*LDID*) written to the header of `.dbf` tables. Values follow ESRI's code page table.

| Value | LDID |
| :--- | :--- |
| `US_MSDOS` | 1 (0x01) |
| `InternationalMS_DOS` | 2 (0x02) |
| `WindowsANSILatinI` | 3 (0x03) |
| `StandardMacintosh` | 4 (0x04) |
| `DanishOEM` | 8 (0x08) |
| `DutchOEM` | 9 (0x09) |
| `DutchOEM2` | 10 (0x0A) |
| `FinnishOEM` | 11 (0x0B) |
| `FrenchOEM` | 13 (0x0D) |
| `FrenchOEM2` | 14 (0x0E) |
| `GermanOEM` | 15 (0x0F) |
| `GermanOEM2` | 16 (0x10) |
| `ItalianOEM` | 17 (0x11) |
| `ItalianOEM2` | 18 (0x12) |
| `JapaneseShift_JIS` | 19 (0x13) |
| `SpanishOEM2` | 20 (0x14) |
| `SwedishOEM` | 21 (0x15) |
| `SwedishOEM2` | 22 (0x16) |
| `NorwegianOEM` | 23 (0x17) |
| `SpanishOEM` | 24 (0x18) |
| `EnglishOEM_GreatBritain` | 25 (0x19) |
| `EnglishOEM_GreatBritain_2` | 26 (0x1A) |
| `EnglishOEM_US` | 27 (0x1B) |
| `FrenchOEM_Canada` | 28 (0x1C) |
| `FrenchOEM2_` | 29 (0x1D) |
| `CzechOEM` | 31 (0x1F) |
| `HungarianOEM` | 34 (0x22) |
| `PolishOEM` | 35 (0x23) |
| `PortugueseOEM` | 36 (0x24) |
| `PortugueseOEM2` | 37 (0x25) |
| `RussianOEM` | 38 (0x26) |
| `EnglishOEM_US_2` | 55 (0x37) |
| `RomanianOEM` | 64 (0x40) |
| `ChineseGBK_PRC` | 77 (0x4D) |
| `Korean_ANSI_OEM` | 78 (0x4E) |
| `ChineseBig5_Taiwan` | 79 (0x4F) |
| `Thai_ANSI_OEM` | 80 (0x50) |
| `CurrentANSICP` | 87 (0x57) |
| `ANSI` | 87 (0x57) |
| `WesternEuropeanANSI` | 88 (0x58) |
| `SpanishANSI` | 89 (0x59) |
| `EasternEuropeanMS_DOS` | 100 (0x64) |
| `RussianMS_DOS` | 101 (0x65) |
| `NordicMS_DOS` | 102 (0x66) |
| `IcelandicMS_DOS` | 103 (0x67) |
| `Kamenicky_Czech_MS_DOS` | 104 (0x68) |
| `Mazovia_Polish_MS_DOS` | 105 (0x69) |
| `GreekMS_DOS_437G` | 106 (0x6A) |
| `TurkishMS_DOS` | 107 (0x6B) |
| `French_CanadianMS_DOS` | 108 (0x6C) |
| `TaiwanBig5` | 120 (0x78) |
| `Hangul_Wansung` | 121 (0x79) |
| `PRCGBK` | 122 (0x7A) |
| `JapaneseShift_JIS_` | 123 (0x7B) |
| `ThaiWindows_MS_DOS` | 124 (0x7C) |
| `GreekOEM` | 134 (0x86) |
| `SlovenianOEM` | 135 (0x87) |
| `TurkishOEM` | 136 (0x88) |
| `RussianMacintosh` | 150 (0x96) |
| `EasternEuropeanMacintosh` | 151 (0x97) |
| `GreekMacintosh` | 152 (0x98) |
| `EasternEuropeanWindows` | 200 (0xC8) |
| `RussianWindows` | 201 (0xC9) |
| `TurkishWindows` | 202 (0xCA) |
| `GreekWindows` | 203 (0xCB) |
| `BalticWindows` | 204 (0xCC) |
| `UTF_8` | 255 (0xFF) |

`CurrentANSICP` and `ANSI` are 0x57 (87), the current ANSI code page (1252). The NuGet 26.0.0 package's reference assembly declares `CurrentANSICP = 0x51`, which is not a valid LDID: use `ANSI`.

## Example

This program lists the layers in a Shapefile folder with the entity count for each code:

```csharp
using Digi21.DigiNG.IO.Shp;

if (args.Length != 1)
{
    Console.WriteLine(@"Uso: ListaCapas <carpeta\cualquiera.shp>");
    return 1;
}

// Read-only and without a code table: add one code per layer.
using var carpeta = new Shp(args[0], true);
carpeta.ResultsAdded += (sender, e) => Console.WriteLine(e.Message);

var porCódigo = new SortedDictionary<string, int>();
foreach (var entidad in carpeta)
{
    var código = entidad.Codes[0].Name;
    porCódigo[código] = porCódigo.GetValueOrDefault(código) + 1;
}

foreach (var (código, número) in porCódigo)
    Console.WriteLine($"{código}: {número}");

return 0;
```

The [Bind2Shape](/digi3d-ai/programacion/.net/ejemplos/bind2shape.md) example writes a `.bind` file's entities to a Shapefile folder, using a code table relating codes to layers.
