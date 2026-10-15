# Polygon
<!-- id: polygon -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Polígono de lectura y escritura: un contorno exterior y cero o más huecos. Añade a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) los constructores, las colecciones de lectura y escritura del contorno y de los huecos, y `JoinPolygons`.

```csharp
public class Polygon : ReadOnlyPolygon
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/) → `Polygon`

Implementa: las interfaces de `ReadOnlyPolygon` ([ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimmable/)) y las de `Entity`.

El contorno exterior y cada hueco tienen que repetir el primer vértice al final. La clase no cierra los contornos: con un contorno sin cerrar, `AnalyzePointPosition` devuelve `Exterior`.

Al añadir el polígono a un archivo de dibujo, el polígono pasa a pertenecer al archivo (`Owner`) y es de solo lectura: los miembros de esta página que lo modifican lanzan `InvalidOperationException`.

Los miembros de `ReadOnlyPolygon` y de `Entity` se describen en sus páginas.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [`Polygon(Code codigo)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/constructores.md#polygon-code) | Polígono sin vértices ni huecos con un código. |
| [`Polygon(IEnumerable<Code> codigos)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/constructores.md#polygon-ienumerable-code) | Polígono sin vértices ni huecos con varios códigos. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`Point3DCollection Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/propiedades/points.md) | Vértices del contorno exterior, de lectura y escritura. Oculta `ReadOnlyPolygon.Points`. |
| [`IList<Line> Holes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/propiedades/holes.md) | Huecos, de lectura y escritura. Oculta `ReadOnlyPolygon.Holes`. |

## Métodos estáticos

| Método | Descripción |
| :--- | :--- |
| [`Polygon JoinPolygons(Entity a, Entity b)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/metodos-estaticos/joinpolygons.md) | Polígono que resulta de unir los recintos de `a` y `b`. |

## Ejemplo

Este programa crea un polígono con un hueco, analiza la posición de tres coordenadas, lo une con un polígono adyacente y escribe el resultado en un archivo `.bind`:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaPoligono <salida.bind>");
    return 1;
}

// Contorno exterior: el último vértice repite el primero.
var parcela = new Polygon(new Code("080100"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 0),
    new Point3D(0, 100, 0),
    new Point3D(100, 100, 0),
    new Point3D(100, 0, 0),
    new Point3D(0, 0, 0),
});

// El hueco pasa a pertenecer al polígono.
var patio = new Line(new Code("080100"));
patio.Points.Add(new[]
{
    new Point3D(40, 40, 0),
    new Point3D(40, 60, 0),
    new Point3D(60, 60, 0),
    new Point3D(60, 40, 0),
    new Point3D(40, 40, 0),
});
parcela.Holes.Add(patio);

Console.WriteLine(parcela.Area);                                             // 9600
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(50, 50, 0)));     // Exterior
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(10, 10, 0)));     // Interior
Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(0, 50, 0)));      // Tangent

// Un polígono adyacente por el lado X = 100.
var vecina = new Polygon(new Code("080100"));
vecina.Points.Add(new[]
{
    new Point3D(100, 0, 0),
    new Point3D(100, 100, 0),
    new Point3D(150, 100, 0),
    new Point3D(150, 0, 0),
    new Point3D(100, 0, 0),
});

// JoinPolygons lanza Exception si la unión no forma un único polígono.
var unión = Polygon.JoinPolygons(parcela, vecina);
Console.WriteLine($"{unión.Width} x {unión.Height}, {unión.Holes.Count} huecos");

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());
archivo.Add(unión);
return 0;
```
