# AreaArea
<!-- id: areaarea -->

Espacio de nombres: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Métodos que analizan la relación entre dos áreas.

```csharp
public static class AreaArea
```

Un área es un [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) o una [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) cerrada. Cada método tiene una sobrecarga por cada combinación de los dos tipos, salvo `OuterRingAdjacent`, que no tiene la sobrecarga `(ReadOnlyLine, ReadOnlyLine)`.

Las relaciones entre dos áreas son excluyentes: para cada par de áreas `a` y `b`, en ese orden, se cumple exactamente una de estas nueve:

| Relación | Método que devuelve `true` |
| :--- | :--- |
| Iguales | [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/equal.md)`(a, b)` |
| Disjuntas | [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/disjoint.md)`(a, b)` |
| Tienen un punto de unión | [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md)`(a, b)` |
| Adyacentes | [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md)`(a, b)` |
| `a` completamente dentro de `b` | [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(a, b)` |
| `a` dentro de `b` | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md)`(a, b)` |
| `b` completamente dentro de `a` | [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md)`(b, a)` |
| `b` dentro de `a` | [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md)`(b, a)` |
| Se solapan | [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/overlap.md)`(a, b, out _)` |

Como las relaciones son excluyentes, `Within(a, b)` devuelve `false` cuando `a` está completamente dentro de `b`. Para saber si `a` está dentro de `b` en cualquiera de los dos casos, combina `Within(a, b) || CompletelyWithin(a, b)`.

## Cómo se clasifican dos áreas

Estos métodos solo analizan vértices; no calculan intersecciones entre lados. Para cada vértice de un área se comprueba si coincide con un vértice de la otra área (vértice común) o si está dentro o fuera de la otra área. Un vértice que está dentro de un hueco de la otra área cuenta como fuera. Un vértice que está sobre un lado de la otra área sin coincidir con ningún vértice suyo se ignora. Las comparaciones se hacen en planta, sin tener en cuenta la coordenada Z, con la tolerancia [Precision.Epsilon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/precision.md), y el resultado no depende del vértice inicial ni del sentido de recorrido de los anillos.

| Relación | Condición |
| :--- | :--- |
| Iguales | Los dos anillos exteriores tienen los mismos vértices, y los huecos también, con cualquier vértice inicial y sentido. Los vértices repetidos consecutivos no cuentan. También son iguales si hay vértices comunes y ningún vértice de un área está dentro ni fuera de la otra (los vértices que no son comunes están sobre los lados de la otra área). |
| Disjuntas | Las cajas envolventes en planta no se tocan, o ningún vértice de un área está dentro de la otra y no hay vértices comunes. |
| `a` completamente dentro de `b` | Los vértices de `a` están dentro de `b` o sobre sus lados, al menos uno está dentro, ninguno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. |
| `a` dentro de `b` | Ningún vértice de `a` está fuera de `b`, al menos uno es común y ningún vértice de `b`, huecos incluidos, está dentro de `a`. Si ningún vértice de `a` está dentro de `b` (todos son comunes o están sobre los lados de `b`), decide un punto interior de `a`: `a` está dentro de `b` si ese punto está dentro de `b`. |
| Adyacentes | Ningún vértice de un área está dentro de la otra, hay vértices comunes y al menos un lado común (dos vértices consecutivos de un anillo de `a` son también vértices consecutivos de un anillo de `b`). |
| Tienen un punto de unión | Ningún vértice de un área está dentro de la otra, hay vértices comunes y ningún lado común. |
| Se solapan | Cualquier otro caso: hay vértices de un área dentro de la otra y ninguna de las dos contiene a la otra. |

Consecuencias de analizar solo vértices:

* Si dos áreas se cruzan sin vértices comunes en el cruce ni vértices dentro de la otra área, el cruce no se detecta: las áreas se consideran disjuntas.
* Si dos áreas comparten un tramo de lado sin vértices comunes, tampoco se detecta el contacto.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `a` o `b` es `null`. |
| `SEHException` (`System.Runtime.InteropServices`) | Un área tiene un anillo sin cerrar (menos de 4 vértices, o el primer vértice no coincide con el último), un anillo de área nula o una espiga (un vértice cuyos dos vecinos coinciden). El código nativo lanza una excepción con el motivo y las coordenadas, y .NET la recibe como `SEHException`. Los métodos validan los anillos antes de comparar las cajas envolventes, así que también lanzan la excepción con dos áreas alejadas. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [Adjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/adjacent.md) | `true` si las dos áreas son adyacentes: comparten al menos un lado y ningún vértice de una está dentro de la otra. |
| [CompletelyWithin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/completelywithin.md) | `true` si la primera área está dentro de la segunda sin vértices comunes. |
| [Disjoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/disjoint.md) | `true` si las dos áreas son disjuntas. |
| [Equal](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/equal.md) | `true` si las dos áreas son iguales. |
| [Join](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/join.md) | `true` si las dos áreas solo se tocan en vértices comunes, sin lados comunes. |
| [OuterRingAdjacent](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/outerringadjacent.md) | Resultado de `Adjacent` con el anillo exterior de cada polígono, sin los huecos. |
| [Overlap](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/overlap.md) | `true` si las dos áreas se solapan. Devuelve además un vértice de un área que está dentro de la otra. |
| [Within](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/areaarea/metodos-estaticos/within.md) | `true` si la primera área está dentro de la segunda con al menos un vértice común. |

## Ejemplo

Este programa crea cuatro cuadrados, analiza sus relaciones y los guarda en un archivo [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md):

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Entities.Relations;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RelacionesAreaArea <salida.bind>");
    return 1;
}

// Cuadrado con el vértice de cierre: AreaArea lanza una excepción si un anillo no está cerrado.
static Polygon Cuadrado(string código, double x, double y, double lado)
{
    var polígono = new Polygon(new Code(código));
    polígono.Points.Add(new[]
    {
        new Point3D(x, y, 0),
        new Point3D(x + lado, y, 0),
        new Point3D(x + lado, y + lado, 0),
        new Point3D(x, y + lado, 0),
        new Point3D(x, y, 0),
    });
    return polígono;
}

var a = Cuadrado("A", 0, 0, 10);
var b = Cuadrado("B", 10, 0, 10);  // Comparte con a el lado de (10, 0) a (10, 10).
var c = Cuadrado("C", 5, 5, 10);   // Su vértice (5, 5) está dentro de a y el vértice (10, 10) de a está dentro de c.
var d = Cuadrado("D", 2, 2, 3);    // Todos sus vértices están dentro de a.

Console.WriteLine($"Adjacent(a, b): {AreaArea.Adjacent(a, b)}");                 // True
Console.WriteLine($"Disjoint(a, b): {AreaArea.Disjoint(a, b)}");                 // False
Console.WriteLine($"CompletelyWithin(d, a): {AreaArea.CompletelyWithin(d, a)}"); // True
Console.WriteLine($"CompletelyWithin(a, d): {AreaArea.CompletelyWithin(a, d)}"); // False

if (AreaArea.Overlap(a, c, out var vértice))
    Console.WriteLine($"a y c se solapan; vértice de a dentro de c: ({vértice.X}, {vértice.Y})"); // (10, 10)

using var archivo = new BinDouble(args[0]);
archivo.Add(a);
archivo.Add(b);
archivo.Add(c);
archivo.Add(d);
return 0;
```
