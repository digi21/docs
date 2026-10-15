# PointArea
<!-- id: pointarea -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre un punto y un área.

```csharp
public static class PointArea
```

El primer parámetro, `point`, es un [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). El segundo, `area`, es un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) o una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada; cada método tiene una sobrecarga para cada tipo. Los métodos no comprueban que la `ReadOnlyLine` esté cerrada; si no lo está, ningún punto está dentro de ella.

> El paquete NuGet de referencia llama `area` al segundo parámetro. En el ensamblado instalado se llama `polygon` en las sobrecargas con `ReadOnlyPolygon` y `line` en las sobrecargas con `ReadOnlyLine`; ese es el nombre que devuelve `ArgumentNullException.ParamName`.

Para cada punto y área se cumple exactamente una de estas tres relaciones:

| Relación | Método que devuelve `true` |
| :--- | :--- |
| El punto coincide con un vértice del área (anillo exterior o hueco). | [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/coincident.md) |
| El punto está en el interior del área. | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/within.md) |
| Ninguna de las anteriores: el punto está fuera, dentro de un hueco o sobre un lado sin coincidir con un vértice. | [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/disjoint.md) |

> En la versión 26.0.0, asignar `Point.Coordinate` no actualiza la caja envolvente del punto. Un [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) creado en memoria tiene una caja vacía, así que `Coincident` y `Within` devuelven `false` y `Disjoint` devuelve `true` sea cual sea su coordenada. Los puntos leídos de un archivo de dibujo tienen la caja calculada. El ejemplo de esta página guarda los puntos en un archivo y los vuelve a leer antes de analizarlos.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/coincident.md) | `true` si el punto coincide con un vértice del área. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/disjoint.md) | `true` si el punto no coincide con ningún vértice del área y no está en su interior. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointarea/metodos-estaticos/within.md) | `true` si el punto está en el interior del área. |

Todos los métodos lanzan `ArgumentNullException` si un argumento es `null`.

## Ejemplo

Este programa crea un polígono con un hueco y tres puntos, los guarda en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), los vuelve a leer y analiza la relación de cada punto con el polígono:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesPuntoArea <salida.bind>");
    return 1;
}

static Point Punto(string código, double x, double y) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, 0) };

var parcela = new Polygon(new Code("PARCELA"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 0), new Point3D(10, 0, 0), new Point3D(10, 10, 0), new Point3D(0, 10, 0), new Point3D(0, 0, 0),
});

var hueco = new Line(new Code("PARCELA"));
hueco.Points.Add(new[]
{
    new Point3D(4, 4, 0), new Point3D(6, 4, 0), new Point3D(6, 6, 0), new Point3D(4, 6, 0), new Point3D(4, 4, 0),
});
parcela.Holes.Add(hueco);

// La caja envolvente de un Point creado en memoria no se actualiza al asignar Coordinate.
// Las relaciones se analizan con los puntos leídos del archivo, que sí la tienen.
File.Delete(args[0]);
using (var escritura = new BinDouble(args[0], new DatabaseConnectionProperties()))
{
    escritura.Add(new Entity[] { parcela, Punto("INTERIOR", 2, 2), Punto("HUECO", 5, 5), Punto("VERTICE", 4, 4) });
}

using var lectura = new BinDouble(args[0], new DatabaseConnectionProperties(), true);
var entidades = lectura.ToList();
var área = entidades.OfType<ReadOnlyPolygon>().Single();
ReadOnlyPoint Busca(string código) => entidades.OfType<ReadOnlyPoint>().Single(p => p.Codes[0].Name == código);

Console.WriteLine($"Within(INTERIOR): {PointArea.Within(Busca("INTERIOR"), área)}");       // True
Console.WriteLine($"Within(HUECO): {PointArea.Within(Busca("HUECO"), área)}");             // False
Console.WriteLine($"Disjoint(HUECO): {PointArea.Disjoint(Busca("HUECO"), área)}");         // True
Console.WriteLine($"Coincident(VERTICE): {PointArea.Coincident(Busca("VERTICE"), área)}"); // True
return 0;
```
