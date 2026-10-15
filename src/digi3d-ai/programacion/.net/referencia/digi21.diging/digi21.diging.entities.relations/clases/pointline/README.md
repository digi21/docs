# PointLine
<!-- id: pointline -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre un punto y una línea.

```csharp
public static class PointLine
```

El primer parámetro, `point`, es un [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/), y el segundo, `line`, una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/).

Los métodos comparan la coordenada del punto con los vértices de la línea; no analizan los lados. Un punto sobre un lado de la línea que no coincide con ningún vértice es disjunto de la línea.

`Disjoint` devuelve el valor contrario de `Coincident || CoincidentAndTerminate`. `Coincident` y `CoincidentAndTerminate` solo devuelven `true` a la vez si la línea pasa dos veces por el punto: una por un vértice intermedio y otra por un extremo.

> En la versión 26.0.0, asignar `Point.Coordinate` no actualiza la caja envolvente del punto. Un [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) creado en memoria tiene una caja vacía, así que `Coincident` y `CoincidentAndTerminate` devuelven `false` y `Disjoint` devuelve `true` sea cual sea su coordenada. Los puntos leídos de un archivo de dibujo tienen la caja calculada. El ejemplo de esta página guarda los puntos en un archivo y los vuelve a leer antes de analizarlos.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincident.md) | `true` si el punto coincide con un vértice intermedio de la línea. |
| [CoincidentAndTerminate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/coincidentandterminate.md) | `true` si el punto coincide con el primer o el último vértice de la línea. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointline/metodos-estaticos/disjoint.md) | `true` si el punto no coincide con ningún vértice de la línea. |

Todos los métodos lanzan `ArgumentNullException` si `point` o `line` es `null`.

## Ejemplo

Este programa crea una línea y tres puntos, los guarda en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), los vuelve a leer y analiza la relación de cada punto con la línea:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesPuntoLinea <salida.bind>");
    return 1;
}

static Point Punto(string código, double x, double y) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, 0) };

var línea = new Line(new Code("LINEA"));
línea.Points.Add(new[] { new Point3D(0, 0, 0), new Point3D(5, 0, 0), new Point3D(10, 0, 0) });

// La caja envolvente de un Point creado en memoria no se actualiza al asignar Coordinate.
// Las relaciones se analizan con los puntos leídos del archivo, que sí la tienen.
File.Delete(args[0]);
using (var escritura = new BinDouble(args[0], new DatabaseConnectionProperties()))
{
    escritura.Add(new Entity[] { línea, Punto("INTERMEDIO", 5, 0), Punto("EXTREMO", 10, 0), Punto("FUERA", 5, 1) });
}

using var lectura = new BinDouble(args[0], new DatabaseConnectionProperties(), true);
var entidades = lectura.ToList();
var leída = entidades.OfType<ReadOnlyLine>().Single();
ReadOnlyPoint Busca(string código) => entidades.OfType<ReadOnlyPoint>().Single(p => p.Codes[0].Name == código);

Console.WriteLine($"Coincident(INTERMEDIO): {PointLine.Coincident(Busca("INTERMEDIO"), leída)}");                         // True
Console.WriteLine($"CoincidentAndTerminate(INTERMEDIO): {PointLine.CoincidentAndTerminate(Busca("INTERMEDIO"), leída)}"); // False
Console.WriteLine($"CoincidentAndTerminate(EXTREMO): {PointLine.CoincidentAndTerminate(Busca("EXTREMO"), leída)}");       // True
Console.WriteLine($"Disjoint(FUERA): {PointLine.Disjoint(Busca("FUERA"), leída)}");                                       // True
return 0;
```
