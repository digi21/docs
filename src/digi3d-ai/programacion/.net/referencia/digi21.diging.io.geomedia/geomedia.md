# Geomedia
<!-- id: geomedia-2 -->

Espacio de nombres: `Digi21.DigiNG.IO.Geomedia`  
Ensamblado: [Digi21.DigiNG.IO.Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/)

Archivo de dibujo en formato Datawarehouse de Geomedia (`.mdb`). Cada capa del almacén es una tabla de la base de datos Access.

```csharp
public class Geomedia : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

La conexión con el archivo usa el proveedor OLE DB `Microsoft.ACE.OLEDB.12.0`, que tiene que estar instalado en el equipo en su versión de 64 bits. La relación entre los códigos de Digi3D.AI y las capas la define la [tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/). El funcionamiento del formato en Digi3D.AI está descrito en [Archivos Datawarehouse de Geomedia](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/geomedia.md).

Llama a `Dispose` (o usa `using`) para cerrar el archivo.

## Constructores

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

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo `.mdb`. El archivo tiene que existir y tener al menos una capa. |
| `digiTab` | Tabla de códigos que relaciona los códigos con las capas. Sin este parámetro se usa una tabla de códigos vacía, y se añade a esa tabla un código por cada capa. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve la representación textual WKT (Well-Known Text) del sistema de referencia de coordenadas. El constructor llama al delegado una sola vez si la tabla `GCoordSystem` del archivo no declara un sistema en ETRS89 (sistema de referencia terrestre europeo de 1989) o WGS 84 (sistema geodésico mundial de 1984), con coordenadas geográficas o con proyección Universal Transversa de Mercator (UTM). Si el delegado devuelve una cadena vacía o no se proporciona ningún delegado, se usa el sistema de la configuración del usuario en Digi3D.AI. |
| `readOnly` | `true` para abrir el archivo en solo lectura. Sin este parámetro vale `false`. |

Las sobrecargas de esta clase no muestran el cuadro de diálogo de selección de capas: cargan todas las capas.

Los constructores lanzan `Exception`, con el mensaje del error, si no se puede conectar con el archivo o si el archivo no tiene ninguna capa en la que leer o guardar geometrías.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Ruta del archivo. |
| `bool CanRead` | `true` si el archivo se puede leer. |
| `bool CanWrite` | `false` si el archivo se abrió en solo lectura. |
| `string Wkt` | WKT del sistema de referencia de coordenadas de la primera capa. |
| `string ConnectionString` | Cadena de conexión de la base de datos del archivo. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos: nombre de la tabla y número de tabla. |
| `bool Visible` | Visibilidad del archivo en Digi3D.AI. No afecta a la lectura ni a la escritura. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las entidades del archivo. `Xmin` vale `null` si `Valid` es `false`. El ensamblado instalado declara además un descriptor de acceso `set` en las seis propiedades, que lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de la caja delimitada por las coordenadas mínimas y máximas en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades de todas las capas. Solo se puede obtener una vez por cada `Geomedia`: la segunda llamada lanza `InvalidOperationException`. Las entidades que devuelve `GetEnumerator()` son de solo lectura y la propiedad `Owner` de cada entidad es el archivo representado por este objeto `Geomedia`. |
| `void Add(Entity entity)` | Guarda la entidad en la capa de su primer código. No hace nada si el código no está en la tabla de códigos, si el archivo no tiene capa para ese código o si la capa no admite ese tipo de geometría. Excepción: una entidad que ya está guardada en este archivo se vuelve a guardar sin esas comprobaciones, y si no hay capa para su código se lanza una excepción. |
| `void Add(IEnumerable<Entity> entities)` | Llama a la operación de `Add(Entity)` con cada entidad, en el orden de la enumeración. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Llama a `Add(Entity)` y devuelve la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Marca la entidad como eliminada y la guarda en su capa. |
| `void Delete(IEnumerable<Entity> entities)` | Llama a `Delete(Entity)` con cada entidad. |
| `int IndexOf(Entity entity)` | Posición de la entidad entre las entidades que el archivo tiene en memoria, o `-1` si la entidad no pertenece a este archivo o no está entre ellas. Con `null` lanza `NullReferenceException`. |
| `void Dispose()` | Cierra el archivo. |

Excepciones de `Add` y `Delete`:

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` o `entities` es `null`. `Delete(IEnumerable<Entity>)` no comprueba si `entities` es `null`. |
| `InvalidOperationException` | El archivo se abrió en solo lectura, o la entidad pertenece a otro archivo (su `Owner` es otro archivo). Para copiar una entidad de un archivo a otro, añade la copia que devuelve `Clone()`. |

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Porcentaje de una operación larga, en `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Texto informativo, en `ResultsAddedEventArgs.Message`. |
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. |

## Ejemplo

Este programa muestra el sistema de referencia de coordenadas de un almacén de Geomedia y cuántas entidades no eliminadas tiene cada código:

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
