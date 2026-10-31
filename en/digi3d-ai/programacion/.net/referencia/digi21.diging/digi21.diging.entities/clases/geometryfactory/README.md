# GeometryFactory
<!-- id: geometryfactory -->
<!-- origen: bfb24eab16b0c577d93ef92b5f8094ffc464f799 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Static class with extension methods creating geometries from others.

```csharp
public static class GeometryFactory
```

Inheritance: `Object` → `GeometryFactory`

Extension methods are called as instance methods of [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (and therefore [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) in a file importing the `Digi21.DigiNG.Entities` namespace: `línea.CreateParallel(5.0)`.

## Extension methods

| Member | Description |
| :--- | :--- |
| [`Line CreateParallel(this ReadOnlyLine line, double distance)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/metodos-de-extension/createparallel.md) | Returns a new line parallel to `line` in the XY plane, `distance` units away. Vertex Z coordinates are unchanged. |
| [`Line CreateParallel(this ReadOnlyLine line, double distanceXY, double distanceZ)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/metodos-de-extension/createparallel.md) | Returns a new line parallel to `line`, `distanceXY` units away in the XY plane, with `distanceZ` added to each vertex's Z. |

## Example

This program creates a road centerline and both edges, 3.5 units on each side; the left edge is also 0.2 units below the centerline:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaParalelas <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var eje = new Line(new Code("040101"));
eje.Points.Add(new Point3D(0.0, 0.0, 100.0));
eje.Points.Add(new Point3D(100.0, 0.0, 102.0));
eje.Points.Add(new Point3D(100.0, 100.0, 104.0));

// A positive distance places the parallel line to the right of the direction of travel.
Line bordeDerecho = eje.CreateParallel(3.5);

// To the left and 0.2 below the centerline.
Line bordeIzquierdo = eje.CreateParallel(-3.5, -0.2);

archivo.Add(eje);
archivo.Add(bordeDerecho);
archivo.Add(bordeIzquierdo);

foreach (var vértice in bordeIzquierdo.Points)
    Console.WriteLine(vértice);

return 0;
```
