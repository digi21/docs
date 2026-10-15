# BinDouble
<!-- id: bindouble -->

Espacio de nombres: `Digi21.DigiNG.IO.BinDouble`  
Ensamblado: [Digi21.DigiNG.IO.BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/)

Archivo de dibujo en el formato binario de doble precisión de Digi3D.AI (`.bind`). Lee y escribe líneas, puntos, textos, polígonos y complejos, sus atributos, los archivos de referencia que guarda el archivo y, si se indica una base de datos, los atributos de base de datos de sus códigos.

```csharp
public class BinDouble : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

El archivo `.bind` empieza por una cabecera que guarda el WKT del sistema de referencia de coordenadas y las coordenadas mínimas y máximas del archivo. El formato no usa archivo `.prj`.

Al crear un `BinDouble` no se carga el archivo en memoria: las entidades se leen del disco a medida que se recorren con `foreach`.

Llama a `Dispose` (o usa `using`) para cerrar el archivo. Mientras un `BinDouble` abierto en escritura no se cierra, otros procesos pueden leer el archivo pero no escribir en él.

## Constructores

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

Abre el archivo `path`. Si `readOnly` es `false` (el valor de las sobrecargas sin `readOnly`) y el archivo no existe, lo crea.

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo `.bind`. |
| `databaseProperties` | Base de datos de los atributos de los códigos. Lee el apartado [DatabaseConnectionProperties](#databaseconnectionproperties). |
| `digiTab` | [Tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) que traduce los códigos del archivo. Sin este parámetro se usa una tabla de códigos vacía, y los códigos del archivo se añaden a esa tabla según se leen. Para guardar atributos de base de datos hace falta una tabla de códigos que asigne una tabla de la base de datos a cada código. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve el WKT del sistema de referencia de coordenadas de un archivo nuevo. Solo se llama si el archivo no existe. |
| `readOnly` | `true` para abrir el archivo en solo lectura. |

Sistema de referencia de coordenadas:

- Si el archivo existe, se lee de su cabecera. Los archivos de la versión 1 del formato no lo guardan y se abren con un sistema local (desconocido).
- Si el archivo no existe, se usa el WKT que devuelve `GetWkt` o, sin delegado, un sistema local, y se escribe en la cabecera del archivo nuevo.

Base de datos:

- Sin el parámetro `databaseProperties`, el constructor usa la base de datos de la última configuración del importador de archivos `.bind` que el usuario guardó en Digi3D.AI. Para abrir el archivo sin base de datos, pasa `new DatabaseConnectionProperties()`.
- Al conectar con una base de datos, el constructor notifica con `ResultsAdded` el modelo de datos, la cadena de conexión y el final de la conexión.

Si `readOnly` es `false` y el archivo existe pero no se puede abrir en escritura (por ejemplo, porque otro proceso lo tiene abierto o porque tiene el atributo de solo lectura), el archivo se abre en solo lectura y `CanWrite` vale `false`. El constructor no lanza ninguna excepción en ese caso.

> En la versión 26.0.0, el constructor `BinDouble(string, DatabaseConnectionProperties, DigiTab, DelegateGetWkt, bool)` no aplica `readOnly`: abre el archivo siempre en escritura. El constructor `BinDouble(string, DatabaseConnectionProperties)` toma de la configuración del usuario en Digi3D.AI si se leen los archivos de referencia (valor `OmitirCargaArchivosReferencia`); el resto de constructores los leen siempre.

Los constructores lanzan `Exception`, con el mensaje del error, en estos casos:

- no se puede abrir ni crear el archivo;
- el archivo no empieza por la cabecera del formato `.bind`, o es de una versión del formato posterior a la 5;
- el modelo de datos de `DataModel` no existe, o no se puede conectar con la base de datos.

Los avisos que se producen dentro del constructor se notifican con el evento `TaskAdded` antes de que el constructor termine. Un manejador que se suscribe después de crear el `BinDouble` no recibe esos avisos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Ruta del archivo. |
| `IEnumerable<string> ReferenceFiles` | Rutas de los archivos de referencia que guarda el archivo, sin las marcadas como eliminadas. Si las entidades no se han leído todavía, la primera lectura de la propiedad recorre el archivo entero. |
| `bool CanRead` | `true` si el archivo se puede leer. |
| `bool CanWrite` | `false` si el archivo está abierto en solo lectura. |
| `string Wkt` | WKT del sistema de referencia de coordenadas del archivo. |
| `string ConnectionString` | Cadena de conexión de la base de datos, o una cadena vacía si el archivo no tiene base de datos. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos: nombre de la tabla y número de tabla. Está vacío si el archivo no tiene base de datos. |
| `bool Visible` | Visibilidad del archivo en Digi3D.AI. No afecta a la lectura ni a la escritura. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las entidades del archivo. `Xmin` vale `null` si `Valid` es `false`. El ensamblado instalado declara además un descriptor de acceso `set` en las seis propiedades, que lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de esa caja en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades del archivo. Solo se puede pedir una vez por cada `BinDouble`: la segunda llamada lanza `InvalidOperationException`. Para recorrer el archivo otra vez, crea otro `BinDouble`. Las entidades son de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` o `ReadOnlyComplex`) y su propiedad `Owner` es este archivo. Las entidades eliminadas también se devuelven, con `Deleted` a `true`. |
| `void Add(Entity entity)` | Añade la entidad al final del archivo. Guarda en el archivo los valores de `entity.Attributes` que no son `null` y, en la base de datos, los atributos de cada código (`Code.Attributes`). Después de la llamada, `entity.Owner` es este archivo. |
| `void Add(IEnumerable<Entity> entities)` | Añade las entidades al final del archivo, en el orden de la enumeración. Si una entidad provoca una excepción, las entidades anteriores ya están añadidas. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Añade la entidad y devuelve la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Marca la entidad como eliminada en el archivo. La entidad sigue en el archivo con `Deleted` a `true`. |
| `void Delete(IEnumerable<Entity> entities)` | Llama a `Delete(Entity)` con cada entidad. |
| `int IndexOf(Entity entity)` | Posición de la entidad en el archivo, o `-1` si la entidad no pertenece a este archivo. |
| `void Dispose()` | Cierra el archivo. |

Excepciones de `Add` y `Delete`:

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` o `entities` es `null`. `Delete(IEnumerable<Entity>)` no comprueba si `entities` es `null`. |
| `InvalidOperationException` | El archivo está abierto en solo lectura, o la entidad pertenece a otro archivo (su `Owner` es otro archivo). Para copiar una entidad de un archivo a otro, añade la copia que devuelve `Clone()`. |
| `Exception` | Un código de la entidad tiene atributos (`Code.Attributes` no está vacío) y, en la tabla de códigos, ese código no tiene tabla de base de datos o su tabla no tiene esquema. También, con el mensaje del error, si la base de datos rechaza los atributos. |

Si la entidad ya está guardada en este archivo, `Add` y `Delete` no la vuelven a escribir: solo actualizan en el archivo la marca de eliminada.

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Porcentaje de una operación larga, en `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Texto informativo, en `ResultsAddedEventArgs.Message`; por ejemplo, la conexión con la base de datos. |
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. |

## DatabaseConnectionProperties

```csharp
public struct DatabaseConnectionProperties
```

Base de datos con la que se conecta un `BinDouble`.

| Propiedad | Descripción |
| :--- | :--- |
| `string DataModel` | Modelo de datos de la base de datos: `CATDBS` o `Geographics`, sin distinguir mayúsculas de minúsculas. Son los valores de la opción `--mdat` de la [orden bind de la línea de comandos](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md). |
| `string ConnectionString` | Cadena de conexión. Admite las variables del nombre del archivo de dibujo, por ejemplo `$(ArchivoDibujoConRutaSinExtension)`, igual que la opción `--cconexion`. |

Con `ConnectionString` vacía o `null` (el valor de `new DatabaseConnectionProperties()`), el archivo se abre sin base de datos.

## Ejemplo

Este programa abre un archivo `.bind` sin base de datos, muestra cuántas entidades de cada tipo tiene y lista sus archivos de referencia:

```csharp
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 1)
{
    Console.WriteLine("Uso: InfoBind <archivo.bind>");
    return 1;
}

// Sin base de datos y en solo lectura.
using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties(), true);
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

// Las entidades ya están leídas: ReferenceFiles no vuelve a recorrer el archivo.
foreach (var referencia in archivo.ReferenceFiles)
    Console.WriteLine($"Referencia: {referencia}");

return 0;
```

Los ejemplos [Bind2Shape](/digi3d-ai/programacion/.net/ejemplos/bind2shape.md) y [MuestraAtributosBBDDGeometriasArchivoBinD](/digi3d-ai/programacion/.net/ejemplos/muestra-atributos-de-base-de-datos.md) abren un archivo `.bind` con una base de datos Access.
