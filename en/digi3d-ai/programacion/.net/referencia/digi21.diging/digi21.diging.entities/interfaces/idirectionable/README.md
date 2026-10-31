# IDirectionable
<!-- id: idirectionable -->
<!-- origen: 5ad79ca37d4ca8f971f29a617e7525a19d5d1f2c -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity whose direction (vertex order) can be reversed.

```csharp
public interface IDirectionable
```

Implementing types: [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). `ReadOnlyLine`, `Polygon` and `ReadOnlyPolygon` do not implement it.

## Methods

| Member | Description |
| :--- | :--- |
| [`void ChangeDirection()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/metodos/changedirection.md) | Reverses vertex order. |

## Example

This program reverses a watercourse digitized upstream so it follows the flow direction (from higher to lower Z), and stores it in a `.bind` file:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CambiaSentido <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var cauce = new Line(new Code("060101"));
cauce.Points.Add(new Point3D(0.0, 0.0, 120.0));
cauce.Points.Add(new Point3D(50.0, 10.0, 110.0));
cauce.Points.Add(new Point3D(100.0, 0.0, 100.0));

// The watercourse was digitized upstream: reverse it to follow the flow direction.
IDirectionable orientable = cauce;
if (cauce.Points[0].Z < cauce.Points[cauce.Points.Count - 1].Z)
    orientable.ChangeDirection();

ReadOnlyLine guardado = archivo.Add(cauce);
Console.WriteLine($"Primer vértice: {guardado.FirstVertex}");

return 0;
```
