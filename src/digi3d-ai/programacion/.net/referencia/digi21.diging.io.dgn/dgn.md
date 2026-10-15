# Dgn
<!-- id: digi21.diging.io.dgn.dgn -->

Espacio de nombres: `Digi21.DigiNG.IO.Dgn`  
Ensamblado: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Archivo de dibujo en formato DGN de MicroStation V8 (`.dgn`). Lee y escribe líneas, puntos, textos, polígonos y complejos con el mismo motor que el importador/exportador [Archivos DGNv8](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) de Digi3D.AI.

```csharp
public class Dgn : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

El código de cada entidad se obtiene de la [tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/), que traduce los atributos del elemento DGN (nivel, color, estilo, grosor, célula) a un código de Digi3D.AI. Un elemento sin traducción en la tabla recibe un código con el formato de `DgnParameters.FormatForUnknownCodes`.

Las entidades se leen del archivo a medida que se recorren con `foreach`. Los cambios (`Add` y `Delete`) se escriben en el disco al llamar a `Dispose`, y solo si el archivo no se abrió en solo lectura y se modificó. Si esa escritura falla, el error no se notifica.

## Constructores

```csharp
public Dgn(string path, DgnParameters parameters)
public Dgn(string path, DgnParameters parameters, bool readOnly)
public Dgn(string path, DgnParameters parameters, DelegateGetWkt GetWkt)
public Dgn(string path, DgnParameters parameters, DelegateGetWkt GetWkt, bool readOnly)
public Dgn(string path, DgnParameters parameters, DigiTab digiTab)
public Dgn(string path, DgnParameters parameters, DigiTab digiTab, bool readOnly)
public Dgn(string path, DgnParameters parameters, DigiTab digiTab, DelegateGetWkt GetWkt)
public Dgn(string path, DgnParameters parameters, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

Abre el archivo `path`. Las sobrecargas sin `readOnly` lo abren en lectura y escritura.

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo `.dgn`. |
| `parameters` | [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md) con la plantilla, el archivo de células, el criterio de códigos y la conversión de células y curvas. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve el WKT del sistema de referencia de coordenadas. Solo se llama si no existe el archivo `.prj`. |
| `digiTab` | Tabla de códigos que traduce los elementos del archivo. Sin este parámetro se usa una tabla de códigos vacía. |
| `readOnly` | `true` para abrir el archivo en solo lectura. |

Si `path` no existe y `parameters.TemplateFile` es un archivo que existe, se copia la plantilla en `path` y se abre la copia. Si `path` no existe y no hay plantilla, se crea en memoria un dibujo 3D nuevo con el metro como unidad principal y el milímetro como subunidad. Ese dibujo se escribe en el disco al llamar a `Dispose` solo si se ha añadido alguna entidad.

El sistema de referencia de coordenadas del archivo se obtiene así:

1. Si existe el archivo `.prj` con el mismo nombre que el `.dgn`, se lee su primera línea.
2. Si no existe y hay delegado `GetWkt`, se usa el texto que devuelve el delegado.
3. Si no existe y no hay delegado, se usa un sistema local (desconocido).

En los casos 2 y 3, si el archivo no se abre en solo lectura, se crea el archivo `.prj` con ese WKT.

Los constructores lanzan `Exception`, con el mensaje del error, si no se puede abrir o crear el archivo `.dgn` o el `.prj`.

Los avisos que se producen dentro del constructor se notifican con el evento `TaskAdded` antes de que el constructor termine. Un manejador que se suscribe después de crear el `Dgn` no recibe esos avisos.

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
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades del archivo. Solo se puede pedir una vez por cada `Dgn`: la segunda llamada lanza `InvalidOperationException`. Las entidades son de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` o `ReadOnlyComplex`) y su propiedad `Owner` es este archivo. |
| `void Add(Entity entity)` | Añade la entidad al archivo. Antes de añadirla, copia en la entidad nativa los atributos de `entity.Attributes` cuyo valor no es `null`. Si el formato no admite la geometría, la entidad no se escribe. Después de la llamada, `entity.Owner` es este archivo. |
| `void Add(IEnumerable<Entity> entities)` | Añade las entidades en el orden de la enumeración. A diferencia de `Add(Entity)`, no copia los atributos. Si una entidad pertenece a otro archivo, lanza la excepción al llegar a esa entidad: las entidades anteriores ya están añadidas. |
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
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. Por ejemplo, una célula que no está en el archivo de células. |

## Ejemplo

Este programa copia las líneas no eliminadas de un archivo `.bin` a un archivo `.dgn` nuevo, con la tabla de códigos indicada y el sistema de referencia de coordenadas del `.bin`:

```csharp
using Digi21.DigiNG.DigiTab;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.IO.Dgn;
using Digi21.Math;
using Digi21.Tasks;

if (args.Length != 3)
{
    Console.WriteLine("Uso: BinADgn <entrada.bin> <salida.dgn> <tabla de códigos>");
    return 1;
}

void MuestraAviso(object sender, TaskAddedEventArgs e) =>
    Console.WriteLine($"{e.Task.Severity}: {e.Task.Title}");

using var digiTab = DigiTab.Load(args[2]);
using var entrada = new Bin(args[0], 2, new Point3D(0, 0, 0), digiTab, true);

var parámetros = new DgnParameters
{
    BlockCriteria = DgnBlockCriteria.Point,
    SplineIncrement = 1.0,
    FormatForUnknownCodes = "$(Level)"
};

// Los cambios se escriben en el .dgn al terminar el bloque using.
using (var salida = new Dgn(args[1], parámetros, digiTab, () => entrada.Wkt))
{
    salida.TaskAdded += MuestraAviso;

    foreach (var entidad in entrada)
    {
        if (entidad.Deleted || entidad is not ReadOnlyLine línea)
            continue;

        salida.Add(línea.Clone());
    }
}

Console.WriteLine("Archivo creado.");
return 0;
```
