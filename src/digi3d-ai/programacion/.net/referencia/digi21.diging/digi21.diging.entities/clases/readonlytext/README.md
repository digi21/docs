# ReadOnlyText

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase implementa una geometría de tipo texto de solo lectura.

```csharp
public class ReadOnlyText : Entity, ISnapable
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) → ReadOnlyText

Tipos derivados: [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)

Implementa: [ISnapable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/isnapable/)

## Propiedades

|  |  |
| :--- | :--- |
| [Coordinate](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/coordinate.md). |
| [Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md). |
| [Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md). |
| [TextHeight](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/textheight.md). |
| [Txt](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/txt.md). |

## Métodos


|  |  |
| :--- | :--- |
| [Clone()](metodos/clone.md) | Devuelve una nueva instancia de [Text](../text/) idéntica a la actual pero que no está asignada a ningún [IDrawingFile](../../../digi21.diging.io/interfaces/idrawingfile/) de manera que no es de solo lectura. |
| [Distance(Point3D)](../../interfaces/isnapable/metodos/distance.md) | Devuelve un vector cuyo módulo es la distancia al punto más cercano al [ReadOnlyPolygon](../readonlypolygon/).; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestSegment(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestsegment.md) | Indica el segmento más cercano y calcula la proyección a dicho segmento además de devolver la distancia a dicho punto.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |
| [NearestVertex(Point3D, out Point3D, out int)](../../interfaces/isnapable/metodos/nearestvertex.md) | Indica el vértice más cercano, así como su índice y distancia.; (Heredado de [ISnapable](../../interfaces/isnapable/)) |




