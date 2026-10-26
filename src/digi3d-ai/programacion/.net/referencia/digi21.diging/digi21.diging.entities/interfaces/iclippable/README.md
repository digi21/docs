# IClippable
<!-- id: iclippable -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidad que se puede dividir por una línea límite.

```csharp
public interface IClippable
```

Tipos que la implementan: [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (y [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) y [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) (y [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)).

Para obtener solo la parte de un recinto que no está dentro de otro, usa [ITrimable.Trim](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md).

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Divide el recinto que forma la entidad por `limit` y devuelve las partes como entidades nuevas. |

## Ejemplo

Este programa divide una parcela por un límite cerrado que cubre su mitad derecha (`Clip`) y calcula la parte de la parcela que queda fuera del límite (`Trim`):

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

// Límite cerrado que cubre la mitad derecha de la parcela y sobresale de ella.
var límite = new Line(new Code("050102"));
límite.Points.Add(new[]
{
    new Point3D(50.0, -10.0, 0.0),
    new Point3D(110.0, -10.0, 0.0),
    new Point3D(110.0, 110.0, 0.0),
    new Point3D(50.0, 110.0, 0.0),
    new Point3D(50.0, -10.0, 0.0),
});

// Clip: la parcela dividida por el límite (dos polígonos, cada uno con los códigos de la parcela).
foreach (var parte in parcela.Clip(límite))
    archivo.Add(parte);

// Trim: la parte de la parcela que queda fuera del límite.
foreach (Polygon resto in parcela.Trim(límite, true))
    Console.WriteLine($"Resto: {resto.Area}");

archivo.Add(límite);
return 0;
```
