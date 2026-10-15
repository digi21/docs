# Shp
<!-- id: shp-3 -->

Espacio de nombres: `Digi21.DigiNG.IO.Shp`  
Ensamblado: [Digi21.DigiNG.IO.Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/)

Archivo de dibujo en formato Shapefile de ESRI. Un `Shp` representa una **carpeta**: cada archivo `.shp` de la carpeta es una capa, con su índice `.shx`, su tabla de atributos `.dbf` y su sistema de referencia de coordenadas `.prj`.

```csharp
public class Shp : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

La relación entre los códigos de Digi3D.AI y las capas la define la [tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/): cada código tiene, en su traducción al formato Shapefile, el nombre de la capa en la que se guarda. Para escribir entidades hace falta, por tanto, una tabla de códigos con esa traducción.

El funcionamiento del formato en Digi3D.AI está descrito en [Archivos Shapefile de ESRI](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/shp.md).

Llama a `Dispose` (o usa `using`) para cerrar las capas.

## Constructores

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

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta de un archivo `.shp`. La carpeta del archivo es la carpeta de las capas: se toma la parte de la ruta anterior a la última barra invertida (`\`). La carpeta tiene que existir. |
| `digiTab` | Tabla de códigos que relaciona los códigos con las capas. Sin este parámetro se usa una tabla de códigos vacía: al leer, se añade a esa tabla un código por cada capa; al escribir, ninguna entidad tiene un código con traducción al formato Shapefile y no se guarda nada. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve el WKT del sistema de referencia de coordenadas. Solo se llama si la carpeta no tiene capas. |
| `readOnly` | `true` para abrir las capas en solo lectura. Sin este parámetro vale `false`. |
| `codePage` | Codificación de los textos de las tablas `.dbf` que se crean, que también se escribe en un archivo `.cpg`. Al leer, solo se usa si el `.dbf` no indica su codificación y no hay archivo `.cpg`. Sin este parámetro vale `CodePage.UTF_8`. |

Al abrir, se cargan todas las capas de la carpeta que tienen archivo `.shx`. Las sobrecargas de esta clase no muestran el cuadro de diálogo de selección de capas.

Las coordenadas se guardan sin redondear (el parámetro *Decimales de precisión* del formato vale 0).

Los constructores lanzan `Exception`, con el mensaje del error, si falla la apertura de la carpeta; por ejemplo, si en la tabla de códigos varios códigos de la misma capa no tienen condición.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Valor del parámetro `path` del constructor. |
| `bool CanRead` | `true` si las capas se pueden leer. |
| `bool CanWrite` | `false` si las capas se abrieron en solo lectura. |
| `string Wkt` | WKT del sistema de referencia de coordenadas: el de la primera capa o, si la carpeta no tiene capas, el que devuelve `GetWkt`. Si la carpeta no tiene capas y no hay delegado `GetWkt`, la propiedad lanza una excepción. |
| `string ConnectionString` | Cadena de conexión de la base de datos, o una cadena vacía si no tiene. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos: nombre de la tabla y número de tabla. |
| `bool Visible` | Visibilidad del archivo en Digi3D.AI. No afecta a la lectura ni a la escritura. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las capas, leídas de sus cabeceras. `Xmin` vale `null` si `Valid` es `false`. El ensamblado instalado declara además un descriptor de acceso `set` en las seis propiedades, que lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de esa caja en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades de todas las capas, capa a capa. Solo se puede pedir una vez por cada `Shp`: la segunda llamada lanza `InvalidOperationException`. Las entidades son de solo lectura y su propiedad `Owner` es este archivo. |
| `void Add(Entity entity)` | Guarda la entidad en la capa de su código y los atributos de su código (`Code.Attributes`) en la tabla `.dbf` de la capa. Si la capa no existe, la crea. Si la entidad no se puede guardar en esa capa (por ejemplo, un punto en una capa de líneas), no hace nada. |
| `void Add(IEnumerable<Entity> entities)` | Llama a la operación de `Add(Entity)` con cada entidad, en el orden de la enumeración. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Llama a `Add(Entity)` y devuelve la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Marca la entidad como eliminada en su capa. Según la opción [Modo de eliminación de geometrías](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/modo-de-eliminacion-de-geometrias.md) de Digi3D.AI, se marca el registro del `.dbf` como borrado o se escribe un valor en un campo. |
| `void Delete(IEnumerable<Entity> entities)` | Llama a `Delete(Entity)` con cada entidad. |
| `int IndexOf(Entity entity)` | Posición de la entidad en el archivo, o `-1` si la entidad no pertenece a este archivo. |
| `void Dispose()` | Cierra las capas. |

Una entidad no se guarda, y se notifica un mensaje con `ResultsAdded` (una sola vez por código), si su código no está en la tabla de códigos, no tiene traducción al formato Shapefile, no tiene nombre de capa o su tabla de base de datos no existe en el esquema de la tabla de códigos.

Excepciones de `Add` y `Delete`:

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` o `entities` es `null`. `Delete(IEnumerable<Entity>)` no comprueba si `entities` es `null`. |
| `InvalidOperationException` | Las capas están en solo lectura; la entidad pertenece a otro archivo (su `Owner` es otro archivo), o la entidad tiene más de un código. `Add(Entity)` solo hace estas comprobaciones si la entidad se puede guardar en la capa de su código. |
| `Exception` | El código de la entidad tiene atributos (`Code.Attributes` no está vacío) y no está en la tabla de códigos, no tiene tabla de base de datos o su tabla no tiene esquema. También, con el mensaje del error, si la tabla `.dbf` rechaza los atributos. |

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Porcentaje de una operación larga, en `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Texto informativo, en `ResultsAddedEventArgs.Message`; por ejemplo, los códigos que no se pueden guardar. |
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. |

## CodePage

```csharp
public enum CodePage : byte
```

Identificador de controlador de idioma (*LDID*) que se escribe en la cabecera de las tablas `.dbf`. Los valores siguen la tabla de páginas de códigos de ESRI.

| Valor | LDID |
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
| `CurrentANSICP` | 81 (0x51) |
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

`CurrentANSICP` vale 81 (0x51). El valor 0x57 (87) es `ANSI`.

## Ejemplo

Este programa lista las capas de una carpeta de Shapefiles con el número de entidades de cada código:

```csharp
using Digi21.DigiNG.IO.Shp;

if (args.Length != 1)
{
    Console.WriteLine(@"Uso: ListaCapas <carpeta\cualquiera.shp>");
    return 1;
}

// Solo lectura y sin tabla de códigos: se añade un código por cada capa.
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

El ejemplo [Bind2Shape](/digi3d-ai/programacion/.net/ejemplos/bind2shape.md) escribe en una carpeta de Shapefiles las entidades de un archivo `.bind`, con una tabla de códigos que relaciona los códigos con las capas.
