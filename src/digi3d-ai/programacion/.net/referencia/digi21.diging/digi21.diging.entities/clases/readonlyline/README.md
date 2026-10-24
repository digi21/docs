# ReadOnlyLine
<!-- id: readonlyline -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Línea de solo lectura: una sucesión de vértices con coordenadas X, Y, Z. Es el tipo de las líneas que devuelven los archivos de dibujo al recorrer sus entidades.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Herencia: `Object` → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → `ReadOnlyLine`

Tipos derivados: [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/).

Implementa: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/), [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/), [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/), [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/), y las interfaces de `Entity`.

La clase no tiene constructores públicos. Para crear una línea, usa [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/line/). Para modificar una línea leída de un archivo, modifica la copia que devuelve `Clone()`.

Una línea está cerrada si su último vértice tiene las mismas coordenadas X, Y que el primero. Una línea cerrada delimita un recinto: los miembros de `ICloseable` y `Area` solo tienen sentido en líneas cerradas.

Los miembros heredados de `Entity` (códigos, colores, atributos, coordenadas mínimas y máximas) se describen en [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [`IReadOnlyList<Point3D> Points { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/points.md) | Vértices de la línea. |
| [`Point3D FirstVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/firstvertex.md) | Primer vértice. |
| [`Point3D LastVertex { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/lastvertex.md) | Último vértice. |
| [`Segment FirstSegment { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/firstsegment.md) | Segmento del primer al segundo vértice. |
| [`Segment LastSegment { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/lastsegment.md) | Segmento del penúltimo al último vértice. |
| [`double Perimeter { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/perimeter.md) | Longitud en el plano X, Y. |
| [`double Perimeter3D { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/perimeter3d.md) | Longitud en el espacio. |
| [`double Area { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/propiedades/area.md) | Área con signo del recinto en el plano X, Y. |
| [`bool Closed { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closed.md) | `true` si el primer y el último vértice coinciden en X, Y. Lanza `InvalidOperationException` si la línea tiene menos de 2 vértices. |
| [`bool ClosedXYZ { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/closedxyz.md) | `true` si el primer y el último vértice coinciden en X, Y, Z. Lanza `InvalidOperationException` si la línea tiene menos de 2 vértices. |
| [`Point3D InteriorPoint { get; }`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md) | Un punto en el interior del recinto. Lanza `InvalidOperationException` si la línea no está cerrada. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [`Line Clone()`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/metodos/clone.md) | Copia de lectura y escritura de la línea. |
| [`PointPosition AnalyzePointPosition(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/metodos/analyzepointposition.md) | Posición de `coordinate` con respecto al recinto, en el plano X, Y: `Interior`, `Exterior` o `Tangent` (sobre el borde). Lanza `InvalidOperationException` si la línea no está cerrada. Una línea cerrada con menos de 4 vértices devuelve siempre `Exterior`. |
| [`Point3D Distance(Point3D coordinate)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/distance.md) | Vector desde `coordinate` hasta el punto más cercano de la línea: el vértice más cercano o la proyección sobre el segmento más cercano, el que esté más cerca en el plano X, Y. Lanza `InvalidOperationException` si la línea no tiene vértices. |
| [`double NearestVertex(Point3D coordinate, out Point3D nearestVertex, out int vertex)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestvertex.md) | Distancia en el plano X, Y al vértice más cercano; devuelve sus coordenadas y su índice. Lanza `InvalidOperationException` si la línea no tiene vértices. |
| [`double NearestSegment(Point3D coordinate, out Point3D calculatedCoordinate, out int segment)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/metodos/nearestsegment.md) | Distancia en el plano X, Y al segmento más cercano entre los segmentos sobre los que cae la proyección perpendicular de `coordinate`; devuelve la proyección y el índice del segmento (el del vértice inicial). Lanza `InvalidOperationException` si la línea no tiene vértices y `Exception` si la proyección no cae sobre ningún segmento. |
| [`IEnumerable<Entity> Clip(ReadOnlyLine limit)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/metodos/clip.md) | Divide la línea por sus intersecciones con `limit`. Lee la lista que sigue a esta tabla. |
| [`IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/metodos/trim.md) | Polígonos que forman el recinto de esta línea menos el recinto de `limit`. |
| `string ToString()` | Texto localizado con el tipo, los datos de `Entity`, el número de vértices y el número y la coordenada de cada vértice. |

`Clip` según la línea:

- Línea cerrada: devuelve líneas cerradas, una por cada recinto en que `limit` divide el recinto de esta línea. Devuelve una colección vacía si las dos líneas no se cortan. Lanza `Exception` si el análisis topológico encuentra puntos dobles o arcos de un solo punto.
- Línea abierta: devuelve los tramos en que `limit` parte esta línea (con N intersecciones, N + 1 líneas, incluidos el tramo inicial y el final); `limit` no se parte. Devuelve una colección vacía si las dos líneas no se cortan.

## Ejemplo

Este programa lista las líneas de un archivo `.bind` con su longitud y escribe en otro archivo una copia de cada línea cerrada con el sentido cambiado:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.BinDouble;

if (args.Length != 2)
{
    Console.WriteLine("Uso: LeeLineas <entrada.bind> <salida.bind>");
    return 1;
}

using var entrada = new BinDouble(args[0], true);
using var salida = new BinDouble(args[1], () => entrada.Wkt);

foreach (var entidad in entrada)
{
    if (entidad.Deleted || entidad is not ReadOnlyLine línea || línea.Points.Count < 2)
        continue;

    Console.WriteLine($"{línea.Codes[0].Name}: {línea.Points.Count} vértices, {línea.Perimeter:F2} m");

    // Las líneas cerradas se copian a la salida con el sentido cambiado.
    if (!línea.Closed)
        continue;

    Console.WriteLine($"  Área {línea.Area:F2}, punto interior {línea.InteriorPoint}");

    var copia = línea.Clone();
    copia.ChangeDirection();
    salida.Add(copia);
}

return 0;
```
