# ReadOnlyPolygon
<!-- id: readonlypolygon -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Polígono de solo lectura: un contorno exterior y cero o más huecos. Es el tipo de los polígonos que devuelven los archivos de dibujo al recorrer sus entidades.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable, ICloseable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyPolygon`

Tipos derivados: [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/).

Implementa: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimmable/), y las interfaces de `Entity`.

La clase no tiene constructores públicos. Para crear un polígono, usa [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/). Para modificar un polígono leído de un archivo, modifica la copia que devuelve `Clone()`.

El recinto del polígono es el interior del contorno exterior menos el interior de los huecos. `AnalyzePointPosition`, `InteriorPoint` y `Area` tienen en cuenta los huecos; `Distance`, `NearestVertex` y `NearestSegment` solo usan el contorno exterior.

Los miembros heredados de `Entity` se describen en [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`IReadOnlyList<Point3D> Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md) | Vértices del contorno exterior. |
| [`IReadOnlyList<ReadOnlyLine> Holes { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md) | Huecos. |
| [`double Area { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/area.md) | Área con signo del contorno exterior menos el área con signo de cada hueco. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/interiorpoint.md) | Un punto del recinto, fuera de los huecos. |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | Siempre `true`. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | Siempre `true`. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`Polygon Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/metodos/clone.md) | Copia de lectura y escritura del polígono, con sus huecos. |
| [`PointPosition AnalyzePointPosition(Point3D point)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Posición de la coordenada con respecto al recinto, en el plano X, Y. Devuelve `Interior` dentro del contorno exterior y fuera de los huecos, `Exterior` fuera del contorno exterior o dentro de un hueco, y `Tangent` sobre el contorno exterior o sobre el borde de un hueco. Un contorno sin cerrar o con menos de 4 vértices devuelve `Exterior`. En el ensamblado instalado el parámetro se llama `coordinate`. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Vector desde `coordinate` hasta el punto más cercano del contorno exterior (un vértice o la proyección sobre un segmento). Lanza `InvalidOperationException` si el polígono no tiene vértices. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Distancia en el plano X, Y al vértice más cercano del contorno exterior; devuelve sus coordenadas y su índice. No comprueba si el polígono tiene vértices. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Distancia en el plano X, Y al segmento más cercano del contorno exterior entre los segmentos sobre los que cae la proyección perpendicular; devuelve la proyección y el índice del segmento. Lanza `InvalidOperationException` si el polígono no tiene vértices y `Exception` si la proyección no cae sobre ningún segmento. |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Divide el polígono por `limit`. Lee la nota de este apartado. |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimmable/metodos/trim.md) | Polígonos que forman el recinto de este polígono menos el recinto de `limit`. |
| `string ToString()` | Texto localizado con el tipo, los datos de `Entity`, los vértices y el número de huecos. |

`Clip` devuelve los polígonos (`Polygon`) en que `limit` divide el recinto, con los códigos de este polígono. Devuelve una colección vacía si `limit` no corta el contorno exterior ni los huecos y no está completamente dentro del polígono, y también si la división produce un solo polígono. Lanza `Exception` si el análisis topológico encuentra puntos dobles o arcos de un solo punto, o no hay datos suficientes.

## Ejemplo

Este programa lista los polígonos de un archivo `.bind` con su área y sus huecos, y escribe en otro archivo una copia sin huecos de cada polígono que tiene huecos:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 2)
{
    Console.WriteLine("Uso: LeePoligonos <entrada.bind> <salida.bind>");
    return 1;
}

using var entrada = new BinDouble(args[0], new DatabaseConnectionProperties(), true);
using var salida = new BinDouble(args[1], new DatabaseConnectionProperties(), () => entrada.Wkt);

foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyPolygon polígono)
        continue;

    Console.WriteLine($"{polígono.Codes[0].Name}: área {polígono.Area:F2}, {polígono.Holes.Count} huecos");

    foreach (var hueco in polígono.Holes)
        Console.WriteLine($"  hueco de {hueco.Points.Count} vértices, área {hueco.Area:F2}");

    // Escribe en la salida una copia de cada polígono con huecos, sin los huecos.
    if (polígono.Holes.Count == 0)
        continue;

    var copia = polígono.Clone();
    copia.Holes.Clear();
    salida.Add(copia);
}

return 0;
```
