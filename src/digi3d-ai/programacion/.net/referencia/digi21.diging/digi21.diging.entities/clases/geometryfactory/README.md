# GeometryFactory
<!-- id: geometryfactory -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Clase estática con métodos de extensión que crean geometrías a partir de otras.

```csharp
public static class GeometryFactory
```

Herencia: `Object` → `GeometryFactory`

Los métodos de extensión se llaman como métodos de instancia de [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) (y por tanto de [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/)) en un archivo que importa el espacio de nombres `Digi21.DigiNG.Entities`: `línea.CreateParallel(5.0)`.

## Métodos de extensión

| Miembro | Descripción |
| :--- | :--- |
| [`Line CreateParallel(this ReadOnlyLine line, double distance)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/metodos-de-extension/createparallel.md) | Devuelve una línea nueva paralela a `line` en el plano XY, a `distance` unidades. Las Z de los vértices no cambian. |
| [`Line CreateParallel(this ReadOnlyLine line, double distanceXY, double distanceZ)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/geometryfactory/metodos-de-extension/createparallel.md) | Devuelve una línea nueva paralela a `line` a `distanceXY` unidades en el plano XY y con `distanceZ` sumado a la Z de cada vértice. |

## Ejemplo

Este programa crea el eje de un vial y los dos bordes, a 3,5 unidades a cada lado; el borde izquierdo queda además 0,2 unidades por debajo del eje:

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

// Con distancia positiva la paralela queda a la derecha del sentido de avance.
Line bordeDerecho = eje.CreateParallel(3.5);

// A la izquierda y 0,2 por debajo del eje.
Line bordeIzquierdo = eje.CreateParallel(-3.5, -0.2);

archivo.Add(eje);
archivo.Add(bordeDerecho);
archivo.Add(bordeIzquierdo);

foreach (var vértice in bordeIzquierdo.Points)
    Console.WriteLine(vértice);

return 0;
```
