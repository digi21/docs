# Complex
<!-- id: complex -->
<!-- origen: 5dd94dac38a8b80ddb1687b019b3949646d09e25 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Read/write complex: an entity with its own codes composed of other entities (lines, points, text, polygons or other complexes). Adds constructors and a read/write entity collection to [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/).

```csharp
public class Complex : ReadOnlyComplex
```

Inheritance: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/) → `Complex`

Implements: the interfaces of `Entity`.

An entity added to `Entities` becomes owned by the complex: do not add it to another complex, polygon or drawing file. Adding entities does not update the complex's minimum and maximum coordinates.

When added to a drawing file, the complex becomes owned by the file (`Owner`) and is read-only: `Entities` methods that modify it throw `InvalidOperationException`.

The members of `ReadOnlyComplex` and `Entity` are described on their pages.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [`Complex(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/constructores.md#complex-code) | Empty complex with one code. |
| [`Complex(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/constructores.md#complex-ienumerable-code) | Empty complex with multiple codes. |

## Properties

| Property | Description |
| :--- | :--- |
| [`IList<Entity> Entities { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/propiedades/entities.md) | Read/write complex entities. Hides `ReadOnlyComplex.Entities`. |

## Example

This program creates a complex with a point and a line and writes it to a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaComplejo <salida.bind>");
    return 1;
}

var vértice = new Point(new Code("100100"));
vértice.Coordinate = new Point3D(50, 50, 7);

var eje = new Line(new Code("100200"));
eje.Points.Add(new Point3D(0, 50, 7));
eje.Points.Add(new Point3D(100, 50, 7));

// Added entities become owned by the complex.
var complejo = new Complex(new Code("100000"));
complejo.Entities.Add(vértice);
complejo.Entities.Add(eje);

Console.WriteLine(complejo.Entities.Count);   // 2

Console.WriteLine(complejo.Entities[0].GetType().Name); // Point

foreach (var entidad in complejo.Entities)
    Console.WriteLine(entidad.GetType().Name); // Point, Line

using var archivo = new BinDouble(args[0]);
archivo.Add(complejo);
return 0;
```
