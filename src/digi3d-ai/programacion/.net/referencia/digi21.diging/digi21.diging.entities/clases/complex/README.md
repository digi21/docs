# Complex
<!-- id: complex -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Complejo de lectura y escritura: una entidad con sus propios códigos formada por otras entidades (líneas, puntos, textos, polígonos u otros complejos). Añade a [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/) los constructores y la colección de lectura y escritura de las entidades.

```csharp
public class Complex : ReadOnlyComplex
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyComplex](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlycomplex/) → `Complex`

Implementa: las interfaces de `Entity`.

Una entidad añadida a `Entities` pasa a pertenecer al complejo: no la añadas a otro complejo, a un polígono ni a un archivo de dibujo. Añadir entidades no actualiza las coordenadas mínimas y máximas del complejo.

Al añadir el complejo a un archivo de dibujo, el complejo pasa a pertenecer al archivo (`Owner`) y es de solo lectura: los métodos de `Entities` que lo modifican lanzan `InvalidOperationException`.

Los miembros de `ReadOnlyComplex` y de `Entity` se describen en sus páginas.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [`Complex(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/constructores.md#complex-code) | Complejo vacío con un código. |
| [`Complex(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/constructores.md#complex-ienumerable-code) | Complejo vacío con varios códigos. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`IList<Entity> Entities { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/complex/propiedades/entities.md) | Entidades del complejo, de lectura y escritura. Oculta `ReadOnlyComplex.Entities`. |

## Ejemplo

Este programa crea un complejo con un punto y una línea y lo escribe en un archivo `.bind`:

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

// Las entidades añadidas pasan a pertenecer al complejo.
var complejo = new Complex(new Code("100000"));
complejo.Entities.Add(vértice);
complejo.Entities.Add(eje);

Console.WriteLine(complejo.Entities.Count);   // 2

// Recorrer con foreach: el indexador de Entities solo admite elementos Line.
foreach (var entidad in complejo.Entities)
    Console.WriteLine(entidad.GetType().Name); // Point, Line

using var archivo = new BinDouble(args[0], new DatabaseConnectionProperties());
archivo.Add(complejo);
return 0;
```
