# MemoryDrawingFile
<!-- id: digi21.utilities.memorydrawingfile -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Archivo de dibujo que envuelve a otro archivo de dibujo y guarda en una lista en memoria las entidades que lee de él. Permite recorrer varias veces un archivo que solo se puede recorrer una vez, como un [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md).

```csharp
public sealed class MemoryDrawingFile : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

Las entidades se leen del archivo envuelto a medida que algún enumerador las pide: una entidad que no se ha pedido todavía no ocupa memoria. Cada llamada a `GetEnumerator` devuelve un enumerador nuevo que recorre primero las entidades de la lista y después lee las siguientes del archivo envuelto. Las entidades son las mismas instancias que devuelve el archivo envuelto, así que su `Owner` es ese archivo y no el `MemoryDrawingFile`.

## Constructores

```csharp
public MemoryDrawingFile(IDrawingFile drawingFile)
```

Envuelve el archivo `drawingFile` y le pide su enumerador. Después de crear el `MemoryDrawingFile`, no recorras `drawingFile` directamente: un archivo que solo se puede recorrer una vez lanza `InvalidOperationException`.

Lanza `NullReferenceException` si `drawingFile` es `null`.

## Propiedades

Todas las propiedades devuelven el valor de la propiedad del mismo nombre del archivo envuelto: `Path`, `Wkt`, `ConnectionString`, `DatabaseTables`, `CanRead`, `CanWrite`, `Visible` (también la asigna), `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW` y `W`.

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve un enumerador nuevo de las entidades. Se puede llamar las veces que se quiera. `Reset` vuelve al principio de la lista. |
| `void Add(Entity entity)`<br>`void Add(IEnumerable<Entity> entities)` | Lee del archivo envuelto todas las entidades que faltan, añade las entidades a la lista y después llama al método `Add` del archivo envuelto. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Igual que `Add(Entity)`. Devuelve lo que devuelve el método `Add` del archivo envuelto. |
| `void Delete(Entity entity)`<br>`void Delete(IEnumerable<Entity> entities)` | Lee del archivo envuelto todas las entidades que faltan y llama al método `Delete` del archivo envuelto. La entidad sigue en la lista. |
| `int IndexOf(Entity entity)` | Devuelve lo que devuelve el método `IndexOf` del archivo envuelto. |
| `void Dispose()` | Libera el enumerador del archivo envuelto y llama a `Dispose` del archivo envuelto. |

Las excepciones de `Add` y `Delete` son las del archivo envuelto. `Add` añade las entidades a la lista antes de llamar al archivo envuelto: si el archivo envuelto lanza una excepción, por ejemplo porque se abrió en solo lectura, las entidades quedan en la lista de todos modos.

Solo la lectura de una entidad del archivo envuelto está protegida con un bloqueo (`lock`). La lista no está protegida: no añadas entidades desde un hilo mientras otro hilo recorre el archivo.

## Ejemplo

Este programa recorre dos veces un archivo `.bin`: la primera para contar las líneas y la segunda para calcular su longitud media.

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 1)
{
    Console.WriteLine("Uso: LongitudMedia <archivo.bin>");
    return 1;
}

using var archivo = new MemoryDrawingFile(new Bin(args[0], 2, new Point3D(0, 0, 0), true));

// Primer recorrido: se leen las entidades del disco y se guardan en memoria.
var líneas = archivo.OfType<ReadOnlyLine>().Count(línea => !línea.Deleted);
if (líneas == 0)
{
    Console.WriteLine("El archivo no tiene líneas.");
    return 0;
}

// Segundo recorrido: las entidades salen de la memoria.
var longitud = archivo.OfType<ReadOnlyLine>().Where(línea => !línea.Deleted).Sum(línea => línea.Perimeter);

Console.WriteLine($"{líneas} líneas, longitud media {longitud / líneas:F2}.");
return 0;
```
