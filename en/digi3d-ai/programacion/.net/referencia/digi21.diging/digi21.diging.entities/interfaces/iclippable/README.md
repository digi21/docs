# IClippable
<!-- id: iclippable -->
<!-- origen: 51828ebb893bd3280ef8ac96d2e51372d598fd87 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity that can be split by a boundary line.

```csharp
public interface IClippable
```

Implementing types: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (and [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) and [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (and [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

To obtain only the part of one enclosed area outside another, use [ITrimable.Trim](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md).

## Methods

| Member | Description |
| :--- | :--- |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Splits the area enclosed by the entity using `limit` and returns the parts as new entities. |

## Example

This program splits a parcel using a closed boundary covering its right half (`Clip`) and calculates the part of the parcel outside the boundary (`Trim`):

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: RecortaPoligono <salida.bind>");
    return 1;
}

using var archivo = new BinDouble(args[0]);

var parcela = new Polygon(new Code("050101"));
parcela.Points.Add(new[]
{
    new Point3D(0.0, 0.0, 0.0),
    new Point3D(100.0, 0.0, 0.0),
    new Point3D(100.0, 100.0, 0.0),
    new Point3D(0.0, 100.0, 0.0),
    new Point3D(0.0, 0.0, 0.0),
});

// Closed boundary covering the parcel's right half and extending beyond it.
var límite = new Line(new Code("050102"));
límite.Points.Add(new[]
{
    new Point3D(50.0, -10.0, 0.0),
    new Point3D(110.0, -10.0, 0.0),
    new Point3D(110.0, 110.0, 0.0),
    new Point3D(50.0, 110.0, 0.0),
    new Point3D(50.0, -10.0, 0.0),
});

// Clip: parcel split by the boundary (two polygons, each with the parcel's codes).
foreach (var parte in parcela.Clip(límite))
    archivo.Add(parte);

// Trim: the part of the parcel outside the boundary.
foreach (Polygon resto in parcela.Trim(límite, true))
    Console.WriteLine($"Resto: {resto.Area}");

archivo.Add(límite);
return 0;
```
