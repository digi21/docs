# IReadOnlyDrawingFile
<!-- id: ireadonlydrawingfile -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Archivo de dibujo que se puede recorrer con `foreach`: devuelve sus entidades, su ruta, su sistema de referencia de coordenadas, su base de datos y sus coordenadas mínimas y máximas.

```csharp
public interface IReadOnlyDrawingFile : IEnumerable<Entity>, IWindow3D
```

Implementa: `IEnumerable<Entity>` (entidades del archivo, de tipo [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/)) e [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/) (coordenadas mínimas y máximas de las entidades del archivo).

Interfaz derivada: [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/), que añade la escritura.

Implementaciones: [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) y [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md). Todas implementan `IDrawingFile`.

Las entidades que devuelve el enumerador tienen como `Owner` el archivo que las devuelve. Cada implementación fija sus reglas de enumeración: por ejemplo, `Bin` solo permite pedir el enumerador una vez, y el enumerador de `DrawingFile` lanza `InvalidOperationException` si el número de entidades del archivo cambia durante el recorrido.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [ConnectionString](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/connectionstring.md) | Cadena de conexión de la base de datos asociada al archivo, o una cadena vacía si el archivo no tiene base de datos. |
| [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/path.md) | Ruta del archivo de dibujo. |
| [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/visible.md) | Visibilidad del archivo en la ventana de dibujo. |
| [Wkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/propiedades/wkt.md) | WKT del sistema de referencia de coordenadas del archivo. |
| `Xmin`, `Ymin`, `Zmin`, `Xmax`, `Ymax`, `Zmax`, `Valid`, `Width`, `Height`, `Depth`, `Center`, `NW`, `N`, `NE`, `E`, `SE`, `S`, `SW`, `W` | Coordenadas mínimas y máximas de las entidades del archivo y puntos derivados de ellas. Son los miembros de [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/). |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [IndexOf(Entity)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/metodos/indexof.md) | Posición de la entidad en el archivo, o `-1` si la entidad no pertenece al archivo. |
| `IEnumerator<Entity> GetEnumerator()` | Enumerador de las entidades del archivo. Es el miembro de `IEnumerable<Entity>` que usa `foreach`. |

## Ejemplo

Este programa muestra los datos de un archivo `.bin` con los miembros de `IReadOnlyDrawingFile` y copia sus puntos a otro archivo `.bin` con los de [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/). Los dos métodos estáticos sirven para cualquier formato. El archivo de salida recibe el sistema de referencia de coordenadas de la entrada con un [DelegateGetWkt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/delegados/delegategetwkt.md):

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;

if (args.Length != 2)
{
    Console.WriteLine("Uso: ResumenArchivo <entrada.bin> <salida.bin>");
    return 1;
}

using var entrada = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

// Solo se llama si la salida no tiene archivo .prj.
DelegateGetWkt obtenWkt = () => entrada.Wkt;
using var salida = new Bin(args[1], 2, new Point3D(0, 0, 0), obtenWkt);

MuestraResumen(entrada);
var copiadas = CopiaPuntos(entrada, salida);
Console.WriteLine($"{copiadas} puntos copiados a {salida.Path}.");
return 0;

// Usa solo los miembros de IReadOnlyDrawingFile: sirve para cualquier formato.
static void MuestraResumen(IReadOnlyDrawingFile archivo)
{
    Console.WriteLine($"Archivo: {archivo.Path}");
    Console.WriteLine($"WKT: {archivo.Wkt}");
    Console.WriteLine(archivo.ConnectionString.Length == 0
        ? "Sin base de datos."
        : $"Base de datos: {archivo.ConnectionString}");

    if (archivo.Valid)
        Console.WriteLine($"X: {archivo.Xmin} a {archivo.Xmax}, Y: {archivo.Ymin} a {archivo.Ymax}, Z: {archivo.Zmin} a {archivo.Zmax}");
    else
        Console.WriteLine("El archivo no tiene coordenadas mínimas y máximas.");
}

// Copia los puntos no eliminados de origen a destino. Recorre origen una sola vez.
static int CopiaPuntos(IReadOnlyDrawingFile origen, IDrawingFile destino)
{
    if (!destino.CanWrite)
        throw new InvalidOperationException($"{destino.Path} está abierto en solo lectura.");

    var copiadas = 0;
    foreach (var entidad in origen)
    {
        if (entidad.Deleted || entidad is not ReadOnlyPoint punto)
            continue;

        destino.Add(punto.Clone());
        copiadas++;
    }
    return copiadas;
}
```
