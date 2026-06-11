# ReadOnlyLine

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo línea \(que en realidad es una polilínea\) de solo lectura.

```csharp
public class ReadOnlyLine : Entity, ICloseable, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyLine

Tipos derivados: [Line](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/vertexpointer/propiedades/line.md)

Implementa: [ICloseable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/)

## Propiedades


|  |  |
| :--- | :--- |
| [Area](propiedades/area.md) | Devuelve el área del [ReadOnlyLine](./). |
| [Perimeter3D](propiedades/perimeter3d.md) | Devuelve el perímetro 3D del [ReadOnlyLine](./). |
| [Perimeter](propiedades/perimeter.md) | Devuelve el perímetro en el plano X, Y del [ReadOnlyLine](./). |
| [InteriorPoint](../../interfaces/icloseable/propiedades/interiorpoint.md) | Calcula un punto interior en el [ReadOnlyLine](./).; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [ClosedXYZ](../../interfaces/icloseable/propiedades/closedxyz.md) | Indica si el primer y último vértices del [ReadOnlyLine](./) coinciden en X, Y, Z.; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [Closed](../../interfaces/icloseable/propiedades/closed.md) | Indica si el primer y último vértices del [ReadOnlyLine](./) coinciden en X, Y.; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [LastSegment](propiedades/lastsegment.md) | Devuelve un [Segment](../../../digi21.math/clases/segment.md) referenciando al último segmento del [ReadOnlyLine](./). |
| [FirstSegment](propiedades/firstsegment.md) | Devuelve un [Segment](../../../digi21.math/clases/segment.md)referenciando al primer segmento del [ReadOnlyLine](./). |
| [LastVertex](propiedades/lastvertex.md) | Devuelve un [Point3D](../../../digi21.math/clases/point3d.md)con las coordenadas del último vértice del [ReadOnlyLine](./). |
| [FirstVertex](propiedades/firstvertex.md) | Devuelve un [Point3D](../../../digi21.math/clases/point3d.md)con las coordenadas del primer vértice del [ReadOnlyLine](./). |
| [Points](propiedades/points.md) | Devuelve un [IReadOnlyList](https://docs.microsoft.com/en-us/dotnet/api/system.collections.generic.ireadonlylist-1?view=net-5.0)con los vértices del [ReadOnlyLine](./). |


## Métodos


|  |  |
| :--- | :--- |
| [AnalyzePointPosition(Point3D)](../../interfaces/icloseable/metodos/analyzepointposition.md) | Devuelve un [PointPosition](../../enumeraciones/pointposition.md)especificando la posición relativa de un determinado punto con el [ReadOnlyLine](./).; (Heredado de [ICloseable](../../interfaces/icloseable/)) |
| [Clip(ReadOnlyLine)](../../interfaces/iclippable/metodos/clip.md) | Devuelve un conjunto de geometrías que son el resultado de recortar el [ReadOnlyLine](./) por el límite especificado.; (Heredado de [IClippable](../../interfaces/iclippable/)) |
| [Clone()](metodos/clone.md) | Devuelve una nueva instancia de [Line](../line/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../../digi21.diging.io/interfaces/idrawingfile/) de manera que no es de solo lectura. |
| [Distance(Point3D)](../../interfaces/isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano a la geometría.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestSegment(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestVertex(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| ToString() | Convierte este [ReadOnlyLine](./) en una cadena legible para los humanos.; (Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0)) |
| [Trim(ReadOnlyLine, bool)](../../interfaces/itrimmable/metodos/trim.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ITrimable](../../interfaces/itrimmable/)) |




