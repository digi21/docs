# IDirectionable
<!-- id: idirectionable -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entidad cuyo sentido (el orden de sus vértices) se puede invertir.

```csharp
public interface IDirectionable
```

Tipos que la implementan: [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). `ReadOnlyLine`, `Polygon` y `ReadOnlyPolygon` no la implementan.

## Métodos

| Miembro | Descripción |
| :--- | :--- |
| [`void ChangeDirection()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/metodos/changedirection.md) | Invierte el orden de los vértices. |

## Ejemplo

Este programa invierte un cauce digitalizado aguas arriba para que avance en el sentido de la corriente (de mayor a menor Z) y lo guarda en un archivo `.bind`:

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

// El cauce se digitalizó aguas arriba: se invierte para que avance en el sentido de la corriente.
IDirectionable orientable = cauce;
if (cauce.Points[0].Z < cauce.Points[cauce.Points.Count - 1].Z)
    orientable.ChangeDirection();

ReadOnlyLine guardado = archivo.Add(cauce);
Console.WriteLine($"Primer vértice: {guardado.FirstVertex}");

return 0;
```
