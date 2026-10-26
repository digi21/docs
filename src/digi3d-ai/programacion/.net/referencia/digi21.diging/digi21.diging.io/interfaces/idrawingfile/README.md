# IDrawingFile
<!-- id: idrawingfile -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Archivo de dibujo en el que se pueden leer, añadir y eliminar entidades.

```csharp
public interface IDrawingFile : IReadOnlyDrawingFile
```

Implementa: [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/), que a su vez implementa `IEnumerable<Entity>` e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).

Implementaciones: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md), [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md), [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md), [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) y [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md).

Una entidad añadida con `Add` pasa a pertenecer al archivo: su propiedad `Owner` es el archivo. Una entidad que pertenece a otro archivo no se puede añadir: se añade la copia que devuelve `Clone()`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [CanRead](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canread.md) | `true` si el formato del archivo permite leer entidades. |
| [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) | `true` si se pueden añadir y eliminar entidades. |
| [DatabaseTables](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/databasetables.md) | Tablas de la base de datos asociada al archivo: nombre de la tabla y número de tabla. |
| [ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md) | Cadena de conexión de la base de datos asociada al archivo. Heredada de `IReadOnlyDrawingFile`. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Ruta del archivo de dibujo. Heredada de `IReadOnlyDrawingFile`. |
| [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) | Visibilidad del archivo en la ventana de dibujo. Heredada de `IReadOnlyDrawingFile`. |
| [Wkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/wkt.md) | WKT del sistema de referencia de coordenadas del archivo. Heredada de `IReadOnlyDrawingFile`. |
| `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Coordenadas mínimas y máximas de las entidades del archivo. Heredadas de [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [Add(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) | Añade una entidad al final del archivo. |
| [Add(IEnumerable&lt;Entity&gt;)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) | Añade varias entidades al final del archivo, en el orden de la enumeración. |
| [Add(Line)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md)<br>`Add(Point)`, `Add(Text)`, `Add(Polygon)`, `Add(Complex)` | Añaden una entidad de ese tipo y la devuelven con su tipo de solo lectura (`ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyText`, `ReadOnlyPolygon` o `ReadOnlyComplex`). |
| [Delete(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) | Elimina una entidad del archivo. |
| [Delete(IEnumerable&lt;Entity&gt;)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) | Elimina varias entidades del archivo. |
| [IndexOf(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/metodos/indexof.md) | Posición de la entidad en el archivo, o `-1`. Heredado de `IReadOnlyDrawingFile`. |
| `IEnumerator<Entity> GetEnumerator()` | Enumerador de las entidades del archivo. Heredado de `IEnumerable<Entity>`. |

## Ejemplo

El [ejemplo de IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#ejemplo) copia los puntos de un archivo a un `IDrawingFile` con `CanWrite` y `Add`.
