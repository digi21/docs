# LineArea
<!-- id: linearea -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre una línea y un área.

```csharp
public static class LineArea
```

El primer parámetro, `line`, es una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/). El segundo, `area`, es un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) o una `ReadOnlyLine` cerrada; cada método tiene una sobrecarga para cada tipo.

Los métodos no comprueban que una `ReadOnlyLine` pasada como `area` esté cerrada. Si no lo está (tiene menos de 4 vértices o el primer vértice no coincide con el último), ningún punto está dentro de ella.

Cada vértice de la línea está en una de estas posiciones con respecto al área:

| Posición | Significado |
| :--- | :--- |
| Dentro | En el interior del área. Un vértice dentro de un hueco de un polígono no está dentro. |
| Fuera | En el exterior del área o dentro de un hueco. |
| Sobre el borde | Sobre un vértice o un lado del anillo exterior o de un hueco. |

Los métodos analizan la posición de los vértices y los vértices comunes; no calculan intersecciones entre lados. A diferencia de [AreaArea](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/), las relaciones de `LineArea` no son excluyentes: por ejemplo, una línea puede cumplir a la vez `Join` y `EndpointJoin`.

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Across](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/across.md) | `true` si la línea atraviesa el interior del área entre dos de sus vértices situados sobre el borde. |
| [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/adjacent.md) | `true` si la línea comparte al menos un lado con el borde del área y ningún vértice de la línea está dentro. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/disjoint.md) | `true` si la línea y el área no tienen vértices comunes y no todos los vértices de la línea están dentro del área. Lee la página: la sobrecarga con `ReadOnlyPolygon` no devuelve ese resultado. |
| [EndpointJoin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/endpointjoin.md) | `true` si el primer o el último vértice de la línea coincide con un vértice del área. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/join.md) | `true` si un vértice intermedio de la línea coincide con un vértice del área, sin lados comunes ni cruce. |
| [TerminatesWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/terminateswithin.md) | `true` si la línea tiene algún vértice fuera del área y empieza o termina dentro. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/within.md) | `true` si todos los vértices de la línea están dentro del área. |

Todos los métodos lanzan `ArgumentNullException` si `line` o `area` es `null`.

## Ejemplo

Este programa crea un área cuadrada y cinco líneas, analiza la relación de cada línea con el área y guarda las entidades en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md):

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesLineaArea <salida.bind>");
    return 1;
}

static Line Línea(string código, params Point3D[] vértices)
{
    var línea = new Line(new Code(código));
    línea.Points.Add(vértices);
    return línea;
}

var área = new Polygon(new Code("AREA"));
área.Points.Add(new[]
{
    new Point3D(0, 0, 0), new Point3D(10, 0, 0), new Point3D(10, 10, 0), new Point3D(0, 10, 0), new Point3D(0, 0, 0),
});

var entra = Línea("ENTRA", new Point3D(-5, 5, 0), new Point3D(5, 5, 0));
var dentro = Línea("DENTRO", new Point3D(3, 3, 0), new Point3D(7, 7, 0));
var borde = Línea("BORDE", new Point3D(0, 0, 0), new Point3D(10, 0, 0));
// Los vértices (0, 5) y (10, 5) están sobre los lados del área y el punto medio entre ellos, dentro.
var cruza = Línea("CRUZA", new Point3D(-5, 5, 0), new Point3D(0, 5, 0), new Point3D(10, 5, 0), new Point3D(15, 5, 0));
var esquina = Línea("ESQUINA", new Point3D(10, 10, 0), new Point3D(15, 15, 0));

Console.WriteLine($"TerminatesWithin(entra, área): {LineArea.TerminatesWithin(entra, área)}"); // True
Console.WriteLine($"Within(dentro, área): {LineArea.Within(dentro, área)}");                   // True
Console.WriteLine($"Adjacent(borde, área): {LineArea.Adjacent(borde, área)}");                 // True
Console.WriteLine($"Across(cruza, área): {LineArea.Across(cruza, área)}");                     // True
Console.WriteLine($"EndpointJoin(esquina, área): {LineArea.EndpointJoin(esquina, área)}");     // True

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());
archivo.Add(área);
archivo.Add(new Entity[] { entra, dentro, borde, cruza, esquina });
return 0;
```
