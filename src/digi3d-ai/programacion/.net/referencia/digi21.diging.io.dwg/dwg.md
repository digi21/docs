# Dwg
<!-- id: digi21.diging.io.dwg.dwg -->

Espacio de nombres: `Digi21.DigiNG.IO.Dwg`  
Ensamblado: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Archivo de dibujo en formato DWG de AutoCAD (`.dwg`). Lee y escribe líneas, puntos, textos, polígonos y complejos con el mismo motor que el importador/exportador [Archivos AutoCAD DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) de Digi3D.AI.

```csharp
public class Dwg : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

El código de cada entidad se obtiene de la [tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/), que traduce la capa y los demás atributos de la entidad de AutoCAD a un código de Digi3D.AI.

Las entidades se leen del archivo a medida que se recorren con `foreach`. Los cambios (`Add` y `Delete`) se escriben en el disco al llamar a `Dispose`, con la versión de `DwgParameters.Version`, y solo si el archivo no se abrió en solo lectura y se modificó. Si la escritura falla, en una aplicación de consola el error se notifica con el evento `TaskAdded` (severidad `Error`); en una aplicación de ventanas se muestra en un cuadro de mensaje.

## Constructores

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

Abre el archivo `path`. Las sobrecargas sin `readOnly` lo abren en lectura y escritura.

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo `.dwg`. |
| `parameters` | [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) con la versión de escritura, la plantilla y la conversión de los bloques. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve el WKT del sistema de referencia de coordenadas. Solo se llama si no existe el archivo `.prj`. |
| `digiTab` | Tabla de códigos que traduce las entidades del archivo. Sin este parámetro se usa una tabla de códigos vacía. |
| `readOnly` | `true` para abrir el archivo en solo lectura. |

Si `path` no existe y `parameters.TemplateFile` es un archivo que existe, se copia la plantilla en `path` y se abre la copia. Si `path` no existe y no hay plantilla, se crea en memoria un dibujo nuevo con unidades métricas, con las capas y los bloques de la tabla de códigos. Ese dibujo se escribe en el disco al llamar a `Dispose`, aunque no se haya añadido ninguna entidad.

El sistema de referencia de coordenadas del archivo se obtiene así:

1. Si existe el archivo `.prj` con el mismo nombre que el `.dwg`, se lee su primera línea.
2. Si no existe y hay delegado `GetWkt`, se usa el texto que devuelve el delegado.
3. Si no existe y no hay delegado, se usa un sistema local (desconocido).

En los casos 2 y 3, si el archivo no se abre en solo lectura, se crea el archivo `.prj` con ese WKT.

Los constructores lanzan `Exception`, con el mensaje del error, si no se puede abrir o crear el archivo `.dwg` o el `.prj`.

Los avisos que se producen dentro del constructor se notifican con el evento `TaskAdded` antes de que el constructor termine. Un manejador que se suscribe después de crear el `Dwg` no recibe esos avisos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Ruta del archivo. |
| `bool CanRead` | `true` si el motor de importación permite leer el archivo. |
| `bool CanWrite` | `false` si el archivo se abrió en solo lectura. |
| `string Wkt` | WKT del sistema de referencia de coordenadas del archivo. |
| `string ConnectionString` | Cadena de conexión de la base de datos asociada al archivo, o una cadena vacía si el archivo no tiene base de datos. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos asociada al archivo: nombre de la tabla y número de tabla. Está vacío si el archivo no tiene base de datos. |
| `bool Visible` | Visibilidad del archivo en Digi3D.AI. No afecta a la lectura ni a la escritura. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las entidades del archivo. `Xmin` vale `null` si `Valid` es `false`. El descriptor de acceso `set` de las seis propiedades lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de esa caja en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades del archivo. Solo se puede pedir una vez por cada `Dwg`: la segunda llamada lanza `InvalidOperationException`. Las entidades son de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` o `ReadOnlyComplex`) y su propiedad `Owner` es este archivo. |
| `void Add(Entity entity)` | Añade la entidad al archivo. Si el formato no admite la geometría, la entidad no se escribe. Los atributos de `entity.Attributes` no se copian. Después de la llamada, `entity.Owner` es este archivo. |
| `void Add(IEnumerable<Entity> entities)` | Añade las entidades en el orden de la enumeración. Si una entidad pertenece a otro archivo, lanza la excepción al llegar a esa entidad: las entidades anteriores ya están añadidas. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Llaman a `Add(Entity)` y devuelven la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Marca la entidad como eliminada y la vuelve a almacenar en el archivo. |
| `void Delete(IEnumerable<Entity> entities)` | Llama a `Delete(Entity)` con cada entidad. |
| `int IndexOf(Entity entity)` | Posición de la entidad entre las entidades del archivo, o `-1` si la entidad no pertenece a este archivo o no se encuentra. |
| `void Dispose()` | Escribe los cambios en el disco y cierra el archivo. |

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
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. Por ejemplo, un tipo de entidad de AutoCAD que no se puede leer (se notifica una vez por tipo) o, en una aplicación de consola, un error al escribir el archivo. |

## Ejemplo

Este programa lee un archivo `.dwg` y muestra cuántas entidades de cada tipo contiene y cuántas tienen cada código:

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
