# Line
<!-- id: line -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Línea de lectura y escritura. Añade a [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) los constructores y los miembros que modifican los vértices.

```csharp
public class Line : ReadOnlyLine, IDesplazable, IDirectionable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) → `Line`

Implementa: [IDesplazable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/), [IDirectionable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/), y las interfaces de `ReadOnlyLine`.

Una `Line` recién creada no tiene vértices ni coordenadas mínimas y máximas. Los vértices se añaden con [Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/propiedades/points.md).

Al añadir la línea a un archivo de dibujo, la línea pasa a pertenecer al archivo (`Owner`) y es de solo lectura: los miembros de esta página que la modifican lanzan `InvalidOperationException`. Lo mismo ocurre con una `Line` que forma parte de un polígono de un archivo (un hueco).

Los miembros de `ReadOnlyLine` y de `Entity` se describen en sus páginas.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [`Line(Code code)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/constructores.md#line-code) | Línea sin vértices con un código. |
| [`Line(IEnumerable<Code> codes)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/constructores.md#line-ienumerable-code) | Línea sin vértices con varios códigos. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`Point3DCollection Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/propiedades/points.md) | Vértices de la línea, de lectura y escritura. Oculta `ReadOnlyLine.Points`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`void Close()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/metodos/close.md) | Cierra la línea añadiendo una copia del primer vértice. |
| [`void ChangeDirection()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/idirectionable/metodos/changedirection.md) | Invierte el orden de los vértices. |
| [`void Offset(Point2D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset.X` y `offset.Y` a todos los vértices. |
| [`void Offset(Point3D offset)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `offset` a todos los vértices. |
| [`void Offset(double x, double y)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x` e `y` a todos los vértices. |
| [`void Offset(double x, double y, double z)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/idesplazable/metodos/offset.md) | Suma `x`, `y` y `z` a todos los vértices. |

Los métodos `Offset` recalculan las coordenadas mínimas y máximas de la línea después de desplazarla.

Excepciones de `Close`, `ChangeDirection` y `Offset`:

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | La línea es de solo lectura. |

## Ejemplo

Este programa crea una línea, la cierra, calcula su área y su perímetro, cambia su sentido, la desplaza y la escribe en un archivo `.bind`:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: CreaLinea <salida.bind>");
    return 1;
}

var parcela = new Line(new Code("080100"));
parcela.Points.Add(new[]
{
    new Point3D(0, 0, 10),
    new Point3D(0, 20, 10),
    new Point3D(30, 20, 12),
    new Point3D(30, 0, 12),
});

Console.WriteLine(parcela.Closed);     // False
parcela.Close();                        // Añade una copia del primer vértice.
Console.WriteLine(parcela.Closed);     // True
Console.WriteLine(parcela.Points.Count); // 5

// Vértices en sentido horario: Area es positiva.
Console.WriteLine(parcela.Area);       // 600
Console.WriteLine(parcela.Perimeter);  // 100

parcela.ChangeDirection();
Console.WriteLine(parcela.Area);       // -600

Console.WriteLine(parcela.AnalyzePointPosition(new Point3D(15, 10, 0))); // Interior

parcela.Offset(100, 0);
Console.WriteLine(parcela.FirstVertex); // Primer vértice desplazado 100 en X.

using var archivo = new BinDouble(args[0]);
archivo.Add(parcela);
return 0;
```
