# Bin
<!-- id: bin-3 -->

Espacio de nombres: `Digi21.DigiNG.IO.Bin`  
Ensamblado: [Digi21.DigiNG.IO.Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/)

Archivo de dibujo en el formato binario clásico de Digi3D.AI (`.bin`). Lee y escribe líneas, puntos, textos, polígonos y complejos.

```csharp
public class Bin : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

El formato `.bin` guarda las coordenadas como números enteros: a cada coordenada se le resta el origen global, se multiplica por 10 elevado al número de decimales y se trunca. El sistema de referencia de coordenadas se guarda en un archivo `.prj` con el mismo nombre que el `.bin`.

Al crear un `Bin` no se carga el archivo en memoria: las entidades se leen del disco a medida que se recorren con `foreach`. Así se pueden recorrer archivos de cualquier tamaño.

Llama a `Dispose` (o usa `using`) para cerrar el archivo. Mientras un `Bin` abierto en escritura no se cierra, otros procesos pueden leer el archivo pero no escribir en él.

## Constructores

```csharp
public Bin(string path, int decimals, Point3D globalOrigin)
public Bin(string path, int decimals, Point3D globalOrigin, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DelegateGetWkt GetWkt)
public Bin(string path, int decimals, Point3D globalOrigin, DelegateGetWkt GetWkt, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, bool readOnly)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, DelegateGetWkt GetWkt)
public Bin(string path, int decimals, Point3D globalOrigin, DigiTab digiTab, DelegateGetWkt GetWkt, bool readOnly)
```

Abre el archivo `path`. Si `readOnly` es `false` (el valor de las sobrecargas sin `readOnly`) y el archivo no existe, lo crea.

| Parámetro | Descripción |
| :--- | :--- |
| `path` | Ruta del archivo `.bin`. |
| `decimals` | Número de decimales de las coordenadas: al guardar, cada coordenada se multiplica por 10 elevado a `decimals`, y al leer se divide. Se devuelve en la propiedad `Decimals`. |
| `globalOrigin` | Origen que se resta de las coordenadas al guardarlas y se suma al leerlas. Se devuelve en la propiedad `GlobalOrigin`. |
| `GetWkt` | Delegado [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md) que devuelve el WKT del sistema de referencia de coordenadas. Solo se llama si no existe el archivo `.prj`. |
| `digiTab` | [Tabla de códigos](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) que traduce los códigos del archivo. Sin este parámetro se usa una tabla de códigos vacía, y los códigos del archivo se añaden a esa tabla según se leen. |
| `readOnly` | `true` para abrir el archivo en solo lectura. |

El sistema de referencia de coordenadas del archivo se obtiene así:

1. Si existe el archivo `.prj`, se lee de ese archivo.
2. Si no existe y hay delegado `GetWkt`, se usa el texto que devuelve el delegado.
3. Si no existe y no hay delegado, se usa un sistema local (desconocido).

En los casos 2 y 3, si el archivo no se abre en solo lectura, se crea el archivo `.prj` con ese WKT.

Los constructores lanzan `Exception`, con el mensaje del error, si no se puede abrir o crear el archivo `.bin` o el `.prj`.

Los avisos que se producen dentro del constructor (por ejemplo, un código de la tabla de códigos que no tiene traducción al formato `.bin`) se notifican con el evento `TaskAdded` antes de que el constructor termine. Un manejador que se suscribe después de crear el `Bin` no recibe esos avisos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Ruta del archivo. |
| `int Decimals` | Número de decimales con el que se leen y se escriben las coordenadas: el valor del parámetro `decimals` del constructor. |
| `Point3D GlobalOrigin` | Origen global con el que se leen y se escriben las coordenadas: el valor del parámetro `globalOrigin` del constructor. |
| `bool CanRead` | Siempre `true`. |
| `bool CanWrite` | `false` si el archivo se abrió en solo lectura. |
| `string Wkt` | WKT del sistema de referencia de coordenadas del archivo. |
| `string ConnectionString` | Cadena de conexión de la base de datos asociada al archivo, o una cadena vacía si el archivo no tiene base de datos. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos asociada al archivo: nombre de la tabla y número de tabla. Está vacío si el archivo no tiene base de datos. |
| `bool Visible` | Visibilidad del archivo en Digi3D.AI. No afecta a la lectura ni a la escritura. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las entidades del archivo. `Xmin` vale `null` si `Valid` es `false`. El ensamblado instalado declara además un descriptor de acceso `set` en las seis propiedades, que lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de esa caja en el plano X, Y. La `Z` de los ocho puntos es `Zmin`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve el enumerador de las entidades del archivo. Solo se puede pedir una vez por cada `Bin`: la segunda llamada lanza `InvalidOperationException`. Para recorrer el archivo otra vez, crea otro `Bin`. Las entidades son de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` o `ReadOnlyComplex`) y su propiedad `Owner` es este archivo. Las entidades eliminadas también se devuelven, con `Deleted` a `true`. |
| `void Add(Entity entity)` | Añade la entidad al final del archivo. Después de la llamada, `entity.Owner` es este archivo. |
| `void Add(IEnumerable<Entity> entities)` | Añade las entidades al final del archivo, en el orden de la enumeración. Si una entidad pertenece a otro archivo, lanza la excepción al llegar a esa entidad: las entidades anteriores ya están añadidas. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Añade la entidad y devuelve la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Marca la entidad como eliminada y la vuelve a escribir en el archivo. La entidad sigue en el archivo con `Deleted` a `true`. |
| `void Delete(IEnumerable<Entity> entities)` | Llama a `Delete(Entity)` con cada entidad. |
| `int IndexOf(Entity entity)` | Posición de la entidad entre las entidades que el archivo tiene en memoria, o `-1` si la entidad no pertenece a este archivo o no está entre ellas. Con `null` lanza `NullReferenceException`. |
| `void Dispose()` | Cierra el archivo. |

Excepciones de `Add` y `Delete`:

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` o `entities` es `null`. `Delete(IEnumerable<Entity>)` no comprueba si `entities` es `null`. |
| `InvalidOperationException` | El archivo se abrió en solo lectura, o la entidad pertenece a otro archivo (su `Owner` es otro archivo). Para copiar una entidad de un archivo a otro, añade la copia que devuelve `Clone()`. |

El formato guarda 6 caracteres de código. Al escribir una entidad con un código más largo, se guardan los 6 primeros caracteres y se notifica un aviso con `TaskAdded`, una sola vez por código.

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `ProgressEventHandler ProgressChanged` | Porcentaje de una operación larga, en `ProgressEventArgs.Progress`. |
| `ResultsAddedEventHandler ResultsAdded` | Texto informativo, en `ResultsAddedEventArgs.Message`. |
| `TaskAddedEventHandler TaskAdded` | Aviso o error, en `TaskAddedEventArgs.Task`: un [ITask](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/interfaces/itask/) con `Title`, `Severity` (`Error`, `Warning` o `Message`), `DrawingFile` y `Module`. Por ejemplo, un código del archivo que no está en la tabla de códigos o un código truncado a 6 caracteres. |

## Ejemplo

Este programa copia las líneas no eliminadas de un archivo `.bin` a otro archivo `.bin` con el mismo sistema de referencia de coordenadas, y muestra los avisos de los dos archivos:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Tasks;

if (args.Length != 2)
{
    Console.WriteLine("Uso: CopiaLineas <entrada.bin> <salida.bin>");
    return 1;
}

void MuestraAviso(object sender, TaskAddedEventArgs e) =>
    Console.WriteLine($"{e.Task.Severity}: {e.Task.Title}");

using var entrada = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
entrada.TaskAdded += MuestraAviso;

// El delegado solo se llama si no existe el .prj de la salida.
using var salida = new Bin(args[1], 2, new Point3D(0, 0, 0), () => entrada.Wkt);
salida.TaskAdded += MuestraAviso;

var copiadas = 0;
foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyLine línea)
        continue;

    // Una entidad leída pertenece a la entrada: se añade una copia.
    salida.Add(línea.Clone());
    copiadas++;
}

Console.WriteLine($"{copiadas} líneas copiadas.");
return 0;
```
