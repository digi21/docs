# ReadOnlyPolygon

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo polígono de solo lectura.

```csharp
public class ReadOnlyPolygon : Entity, ISnapable, IClippable, ITrimable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyPolygon

Tipos derivados: [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/)

Implementa: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Area](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/area.md). |
| [Holes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/holes.md). |
| [Points](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/propiedades/points.md). |
| [InteriorPoint](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/icloseable/propiedades/interiorpoint.md). |

## Métodos


|  |  |
| :--- | :--- |
| [Clone()](metodos/clone.md) | Devuelve una nueva instancia de [Polygon](../polygon/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../digi21.diging.io/idrawingfile/) de manera que no es de solo lectura. |
| [AnalyzePointPosition(Point3D)](../icloseable/metodos/analyzepointposition.md) | Devuelve un [PointPosition](../pointposition.md)especificando la posición relativa de un determinado punto con el [ReadOnlyPolygon](./).; (Heredado de [ICloseable](../icloseable/)) |
| [Clip(ReadOnlyLine)](../iclippable/metodos/clip.md) | Devuelve un conjunto de geometrías que son el resultado de recortar el [ReadOnlyPolygon](./) por el límite especificado.; (Heredado de [IClippable](../iclippable/)) |
| [Distance(Point3D)](../isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano al [ReadOnlyPolygon](./).; (Heredado de [ISnapable](../isnapable/)) |
| [NearestSegment(Point3D, out Point3D, out int)](../isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.; (Heredado de [ISnapable](../isnapable/)) |
| [NearestVertex(Point3D, out Point3D, out int)](../isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ISnapable](../isnapable/)) |
| ToString() | Convierte este [ReadOnlyPolygon](./) en una cadena legible para los humanos.; (Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0)) |
| [Trim(ReadOnlyLine, bool)](../itrimmable/metodos/trim.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ITrimable](../itrimmable/)) |


