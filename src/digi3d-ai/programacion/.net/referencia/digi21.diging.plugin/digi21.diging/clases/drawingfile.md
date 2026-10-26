# DrawingFile
<!-- id: drawingfile-2 -->

Espacio de nombres: `Digi21.DigiNG`  
Ensamblado: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Archivo de dibujo cargado en una ventana de dibujo de Digi3D.AI. Solo existe dentro de Digi3D.AI: se usa desde las extensiones (órdenes, buscadores, propiedades dinámicas…).

```csharp
public class DrawingFile : IDrawingFile, IDisposable
```

Implementa: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que a su vez implementa [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

La clase no tiene constructores públicos. El archivo de dibujo activo de la ventana de dibujo activa se obtiene con la propiedad estática `DigiNG.DrawingFile`, que lanza `NullReferenceException` si no hay ninguna ventana de dibujo abierta. Mientras el archivo activo no cambia, la propiedad devuelve la misma instancia.

Digi3D.AI se encarga de cerrar el archivo asociado a `DrawingFile`. Si Digi3D.AI ya ha cerrado el archivo, o si se ha llamado a `Dispose`, los miembros que acceden al archivo lanzan `ObjectDisposedException`. Después de llamar a `Dispose`, la siguiente lectura de `DigiNG.DrawingFile` devuelve una instancia nueva.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Path` | Ruta del archivo de dibujo. |
| `bool CanRead` | `true` si el formato del archivo permite leer entidades. |
| `bool CanWrite` | Siempre `true`. |
| `string Wkt` | WKT del sistema de referencia de coordenadas del archivo. |
| `string ConnectionString` | Cadena de conexión de la base de datos del archivo, o una cadena vacía si el archivo no tiene base de datos. |
| `IDictionary<string, int> DatabaseTables` | Tablas de la base de datos del archivo: nombre de la tabla y número de tabla. Está vacío si el archivo no tiene base de datos. |
| `bool Visible` | Visibilidad del archivo en la ventana de dibujo. Lanza `MissingMethodException` si el formato del archivo no permite ocultarlo. |
| `double? Xmin`, `double Ymin`, `double Zmin`, `double Xmax`, `double Ymax`, `double Zmax` | Coordenadas mínimas y máximas de las entidades del archivo. `Xmin` vale `null` si `Valid` es `false`. El ensamblado instalado declara además un descriptor de acceso `set` en las seis propiedades, que lanza `InvalidOperationException`. |
| `bool Valid` | `true` si las coordenadas mínimas y máximas son válidas. |
| `double Width`, `double Height`, `double Depth` | `Xmax - Xmin`, `Ymax - Ymin` y `Zmax - Zmin`. |
| `Point3D Center` | Centro de la caja que forman las coordenadas mínimas y máximas. |
| `Point3D NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Esquinas y puntos medios de los lados de esa caja en el plano X, Y. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| `IEnumerator<Entity> GetEnumerator()` | Devuelve un enumerador de las entidades del archivo. Se puede recorrer el archivo tantas veces como se quiera. Si el número de entidades cambia durante el recorrido (por ejemplo, porque se llama a `Add`), `MoveNext` lanza `InvalidOperationException`: para añadir entidades durante un recorrido, guárdalas en una lista y añádelas al terminar. |
| `void Add(Entity entity)` | Añade la entidad a la ventana de dibujo. La entidad se guarda en el archivo de dibujo activo de la ventana en el momento de la llamada. Si el archivo tiene base de datos, se guardan también los atributos de los códigos (`Code.Attributes`). La entidad se descarta sin excepción si el archivo activo es de solo lectura, si un manejador de `DigiNG.AddingEntity` o una extensión la rechaza, o si falla el alta en la base de datos; `entity.Owner` vale este archivo también en ese caso. |
| `void Add(IEnumerable<Entity> entities)` | Añade las entidades a la ventana de dibujo en una sola operación. Esta sobrecarga no copia los atributos de los códigos. |
| `ReadOnlyLine Add(Line line)`<br>`ReadOnlyPoint Add(Point point)`<br>`ReadOnlyText Add(Text text)`<br>`ReadOnlyPolygon Add(Polygon polygon)`<br>`ReadOnlyComplex Add(Complex complex)` | Llama a `Add(Entity)` y devuelve la misma instancia con el tipo de solo lectura. |
| `void Delete(Entity entity)` | Elimina la entidad del archivo de dibujo activo de la ventana. Si la entidad no está en ese archivo, no hace nada. |
| `void Delete(IEnumerable<Entity> entities)` | Elimina las entidades en una sola operación. |
| `void Undelete(Entity entity)` | Recupera una entidad eliminada del archivo de dibujo activo de la ventana. Si la entidad no está en ese archivo, no hace nada. |
| `void Undelete(IEnumerable<Entity> entities)` | Recupera las entidades en una sola operación. |
| `void Compress()` | Comprime el archivo de dibujo (elimina del archivo las entidades eliminadas), si el formato lo permite. Es la misma operación que la orden [COMPRIMIR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md). |
| `void Backup()` | Hace una copia de seguridad del archivo de dibujo. |
| `int IndexOf(Entity entity)` | Devuelve la posición de la entidad entre las entidades que el archivo tiene en memoria, o `-1` si la entidad no pertenece a este archivo o no está entre las entidades en memoria. Si la entidad es `null`, lanza `NullReferenceException`. |
| `void Dispose()` | Desconecta este objeto del archivo. No cierra el archivo. |

Excepciones de `Add`, `Delete` y `Undelete`:

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entity` o `entities` es `null`. Las sobrecargas de `Delete` y `Undelete` que reciben `IEnumerable<Entity>` no comprueban si `entities` es `null`. |
| `InvalidOperationException` | La entidad pertenece a otro archivo (su `Owner` es otro archivo). Para copiar una entidad de un archivo a otro, añade la copia que devuelve `Clone()`. En las sobrecargas que reciben `IEnumerable<Entity>`, la excepción se lanza antes de modificar la ventana de dibujo. |
| `ObjectDisposedException` | Se ha llamado a `Dispose`, Digi3D.AI ya ha cerrado el archivo o la ventana de dibujo se ha cerrado. |
| `NullReferenceException` | La ventana de dibujo activa se está cerrando y ya no tiene documento (por ejemplo, dentro de un manejador de `DestroyingWindow` o del evento `Disposing` de una orden). Afecta a `Add`, `Delete`, `Undelete`, `Compress` y `Backup`. |

## Eventos

| Evento | Descripción |
| :--- | :--- |
| `EventHandler<Entity> EntityAdded` | Se produce cada vez que el archivo va a escribir una entidad, antes de escribirla: al añadirla y también al eliminarla o recuperarla. El segundo argumento es la entidad guardada. Las excepciones que lance un manejador no se propagan a Digi3D.AI ni impiden que se llame a los demás manejadores: se registran con `System.Diagnostics.Trace`. |

## Ejemplo

Esta orden elimina del archivo de dibujo activo los textos cuyo contenido está vacío o solo tiene espacios, y escribe en la ventana de resultados cuántos ha eliminado:

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

            // Primero se recorre el archivo y después se eliminan las entidades.
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

La orden se compila y se carga como se explica en el [tutorial para crear una extensión](/digi3d-ai/programacion/.net/tutorial-extension.md).
