# PointPoint
<!-- id: pointpoint -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre dos puntos.

```csharp
public static class PointPoint
```

Los dos parámetros, `a` y `b`, son de tipo [ReadOnlyPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/). Los métodos comparan las coordenadas X e Y de los dos puntos; la Z no interviene. `Disjoint(a, b)` devuelve siempre el valor contrario de `Coincident(a, b)`.

Los métodos comparan primero las cajas envolventes de los dos puntos, y esa comparación no usa tolerancia. Por eso dos puntos solo son coincidentes si sus X y sus Y son idénticas: dos puntos que difieren menos que [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md) son disjuntos.

> En la versión 26.0.0, asignar `Point.Coordinate` no actualiza la caja envolvente del punto. Si uno de los dos puntos es un [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/) creado en memoria, su caja está vacía: `Coincident` devuelve `false` y `Disjoint` devuelve `true` sea cual sea su coordenada. Los puntos leídos de un archivo de dibujo tienen la caja calculada. El ejemplo de esta página guarda los puntos en un archivo y los vuelve a leer antes de analizarlos.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Coincident](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/coincident.md) | `true` si los dos puntos tienen las mismas coordenadas X e Y. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/pointpoint/metodos-estaticos/disjoint.md) | `true` si los dos puntos tienen coordenadas X o Y distintas. |

Los dos métodos lanzan `ArgumentNullException` si `a` o `b` es `null`.

## Ejemplo

Este programa crea tres puntos, los guarda en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), los vuelve a leer y analiza sus relaciones:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesPuntoPunto <salida.bind>");
    return 1;
}

static Point Punto(string código, double x, double y, double z) => new Point(new Code(código)) { Coordinate = new Point3D(x, y, z) };

// La caja envolvente de un Point creado en memoria no se actualiza al asignar Coordinate.
// Las relaciones se analizan con los puntos leídos del archivo, que sí la tienen.
File.Delete(args[0]);
using (var escritura = new BinDouble(args[0], new DatabaseConnectionProperties()))
{
    // B tiene la misma X e Y que A; la Z no se compara.
    escritura.Add(new Entity[] { Punto("A", 1, 1, 0), Punto("B", 1, 1, 25), Punto("C", 2, 2, 0) });
}

using var lectura = new BinDouble(args[0], new DatabaseConnectionProperties(), true);
var puntos = lectura.OfType<ReadOnlyPoint>().ToDictionary(p => p.Codes[0].Name);

Console.WriteLine($"Coincident(A, B): {PointPoint.Coincident(puntos["A"], puntos["B"])}"); // True
Console.WriteLine($"Disjoint(A, C): {PointPoint.Disjoint(puntos["A"], puntos["C"])}");     // True
return 0;
```
