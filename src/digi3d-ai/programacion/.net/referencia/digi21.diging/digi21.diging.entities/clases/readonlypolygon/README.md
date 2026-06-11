# ReadOnlyPolygon

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo polígono de solo lectura.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyPolygon

Tipos derivados: [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)

Implementa: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/)

## Propiedades


|  |  |
| :--- | :--- |
| [Area](propiedades/area.md) | Devuelve el área del [ReadOnlyPolygon](./). |
| [Closed](../../interfaces/icloseable/propiedades/closed.md) | Indica si el primer y último vértices del [ReadOnlyPolygon](./) coinciden en X, Y.; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [ClosedXYZ](../../interfaces/icloseable/propiedades/closedxyz.md) | Indica si el primer y último vértices del [ReadOnlyPolygon](./) coinciden en X, Y, Z.; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [Holes](propiedades/holes.md) | Devuelve una [IReadOnlyList<T>](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0) con los huecos del [ReadOnlyPolygon](./). |
| [Points](propiedades/points.md) | Devuelve un [IReadOnlyList<T>](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0)con los vértices del límite exterior del [ReadOnlyPolygon](./). |
| [InteriorPoint](../../interfaces/icloseable/propiedades/interiorpoint.md) | Calcula un punto interior en el [ReadOnlyPolygon](./).; (Heredado de [ICloseable](../../interfaces/icloseable/)) |


## Métodos


|  |  |
| :--- | :--- |
| [Clone()](metodos/clone.md) | Devuelve una nueva instancia de [Polygon](../polygon/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../../digi21.diging.io/interfaces/idrawingfile/) de manera que no es de solo lectura. |
| [AnalyzePointPosition(Point3D)](../../interfaces/icloseable/metodos/analyzepointposition.md) | Devuelve un [PointPosition](../../enumeraciones/pointposition.md)especificando la posición relativa de un determinado punto con el [ReadOnlyPolygon](./).; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [Clip(ReadOnlyLine)](../../interfaces/iclippable/metodos/clip.md) | Devuelve un conjunto de geometrías que son el resultado de recortar el [ReadOnlyPolygon](./) por el límite especificado.; (Heredado de [IClippable](../../interfaces/iclippable/)) |
| [Distance(Point3D)](../../interfaces/isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano al [ReadOnlyPolygon](./).; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestSegment(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestVertex(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| ToString() | Convierte este [ReadOnlyPolygon](./) en una cadena legible para los humanos.; (Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0)) |
| [Trim(ReadOnlyLine, bool)](../../interfaces/itrimmable/metodos/trim.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ITrimable](../../interfaces/itrimmable/)) |


